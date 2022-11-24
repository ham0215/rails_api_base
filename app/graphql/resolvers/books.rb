# frozen_string_literal: true

module Resolvers
  class Books < Resolvers::BaseResolver
    description '本を取得する'

    argument :ids, [Int], required: true

    type Types::BookType.connection_type, null: false

    def resolve(ids:)
      ::Book.where(id: ids)
    end
  end
end
