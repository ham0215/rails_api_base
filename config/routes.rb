Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'

  resources :users do
    post :avatar
  end

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/your/endpoint'
  end
end
