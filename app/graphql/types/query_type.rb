# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, resolver: Resolvers::Users
    field :viewer, resolver: Resolvers::Viewer
    field :profile, resolver: Resolvers::Profile
    field :books, resolver: Resolvers::Books

    field :user, Types::UserType, null: true do
      argument :id, Int, required: true
    end

    def user(id:)
      User.find id
    end
  end
end
