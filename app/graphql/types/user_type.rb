# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :profile, Types::ProfileType, null: true, method: :profile_loader
    field :portfolios, Types::PortfolioType.connection_type, null: false, method: :portfolios_loader
    field :books, Types::BookType.connection_type, null: false, method: :books_loader
  end
end
