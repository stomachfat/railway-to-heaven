import React, { Component } from "react";
import { ApolloProvider, Query } from "react-apollo";
import client from "../common/graphql/client";
import { map } from "lodash";

// graphql specific
import gql from "graphql-tag";

const GET_ALL_LINKS = gql`
  query {
    allLinks {
      id
      description
      url
    }
  }
`;

class Application extends Component {
  render() {
    return <div>WTF</div>;
    return (
      <ApolloProvider client={client}>
        <Query query={GET_ALL_LINKS}>
          {({ loading, error, data }) => {
            if (loading) {
              return <div> loading ... </div>;
            }

            if (error) {
              return <div> error ... </div>;
            }

            if (!data) {
              return <div> no data ...</div>;
            }

            return (
              <div>
                {map(data.allLinks, link => (
                  <div> {link.url} </div>
                ))}
              </div>
            );
          }}
        </Query>
      </ApolloProvider>
    );
  }
}

export default Application;
