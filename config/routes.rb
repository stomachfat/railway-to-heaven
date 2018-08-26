Rails.application.routes.draw do


  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"

  # trying to do a multi route
  root to: 'stairways#index'
  get '*path', to: 'stairways#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
