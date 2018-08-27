// tslint:disable no-console
import { InMemoryCache } from "apollo-cache-inmemory";
import { ApolloClient } from "apollo-client";
import { setContext } from "apollo-link-context";
import { ErrorResponse, onError } from "apollo-link-error";
import { createHttpLink } from "apollo-link-http";
import { toast } from "react-toastify";
import fetch from "unfetch";
// import { getApiHostname } from "../utils/hostname";
import token from "../utils/token";

const httpLink = createHttpLink({
  // uri: `${getApiHostname()}/graphql`,
  fetch
});

const authLink = setContext((_, { headers }) => {
  const t = token();
  const result = {
    headers: {
      ...headers,
      "X-Customer-Token": t
    }
  };
  return result;
});

// Extending ErrorResponse as networkError doesn't appear to match reality.
type ErrorResponseWithNetwork = ErrorResponse & {
  networkError?: Error & {
    statusCode?: number;
    message?: string;
  };
};

const errorLink = onError(
  ({ graphQLErrors, networkError }: ErrorResponseWithNetwork) => {
    if (graphQLErrors) {
      graphQLErrors.map(({ message, locations, path }) => {
        toast.error(message);
      });
    }

    if (networkError) {
      if (networkError.statusCode === 401) {
        // Unauthorized, so you are likely not logged in, send you to 404?
        toast.error(
          "You do not appear to be authorized to view this page, perhaps you are not properly authenticated?"
        );
        return;
      } else {
        toast.error(networkError.message);
      }
    }
  }
);

const client = new ApolloClient({
  link: authLink.concat(errorLink).concat(httpLink),
  cache: new InMemoryCache(),
  defaultOptions: {
    query: {
      errorPolicy: "all"
    },
    mutate: {
      errorPolicy: "all"
    }
  }
});

export default client;
