# frozen_string_literal: true

module Resolvers
  class BaseResolver < GraphQL::Schema::Resolver
    def authorized?(args = {})
      context[:arguments] = args
      super()
    end
  end
end
