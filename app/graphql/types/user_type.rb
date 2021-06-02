# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :profile, Types::ProfileType, null: true
    field :portfolios, Types::PortfolioType.connection_type, null: false
    field :books, Types::BookType.connection_type, null: false

    def profile
      dataloader.with(Sources::ActiveRecordObject, User, :profile).load(object.id)
    end
  end
end
