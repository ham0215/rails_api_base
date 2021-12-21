Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'

  resources :users do
    post :avatar
  end

  if Rails.env.development?
    require 'sidekiq/web'
    mount Sidekiq::Web => "/sidekiq"

    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
end
