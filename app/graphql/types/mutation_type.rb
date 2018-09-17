Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  # links
  field :createLink, function: Resolvers::CreateLink.new
  field :updateLink, function: Resolvers::UpdateLink.new
  # users
  field :createUser, function: Resolvers::CreateUser.new
  field :signinUser, function: Resolvers::SignInUser.new
  # votes
  field :createVote, function: Resolvers::CreateVote.new
  # scenarios
  field :createScenario, function: Resolvers::CreateScenario.new
end
