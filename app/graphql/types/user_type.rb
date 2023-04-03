# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :nickname, String, null: false
    field :slow_field, String, null: false
    field :slow_field2, String, null: false
    field :books, Types::BookType.connection_type, null: false
    field :profile, Types::ProfileType, null: false
    field :portfolios, Types::PortfolioType.connection_type, null: false

    def books
      AssociationLoader.for(User, :sorted_books).load(object)
    end

    def profile
      AssociationLoader.for(User, :profile).load(object)
    end

    def portfolios
      AssociationLoader.for(User, :sorted_portfolios).load(object)
    end
  end
end
