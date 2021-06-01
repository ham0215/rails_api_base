# frozen_string_literal: true

module Resolvers
  class Users < Resolvers::BaseResolver
    description 'ユーザー一覧を取得する'

    type Types::UserType.connection_type, null: false

    def resolve
      User.all
    end
  end
end
