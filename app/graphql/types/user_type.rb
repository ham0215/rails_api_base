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
      BatchLoader::GraphQL.for(object.id).batch do |user_ids, loader|
        Profile.where(user_id: user_ids).each { |profile| loader.call(profile.user_id, profile) }
      end
    end

    def portfolios
      BatchLoader::GraphQL.for(object.id).batch(default_value: []) do |user_ids, loader|
        Portfolio.where(user_id: user_ids).each do |portfolio|
          loader.call(portfolio.user_id) { _1 << portfolio }
        end
      end
    end

    def books
      BatchLoader::GraphQL.for(object.id).batch(default_value: []) do |user_ids, loader|
        UserBook.where(user_id: user_ids).preload(:book).each do |user_book|
          loader.call(user_book.user_id) { _1 << user_book.book }
        end
      end
    end
  end
end
