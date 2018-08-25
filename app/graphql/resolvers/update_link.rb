class Resolvers::UpdateLink < GraphQL::Function
  # arguments passed as "args"
  argument :id, !types.ID
  argument :description, !types.String
  argument :url, !types.String

  # return type from the mutation
  type Types::LinkType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    link = Link.find_by(id: args[:id])
    link.update(
      description: args[:description],
      url: args[:url],
    )
    link
  end
end
