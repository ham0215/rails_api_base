# frozen_string_literal: true

module Resolvers
  class Viewer < Resolvers::BaseResolver
    description 'ログインユーザーを取得する'

    type Types::UserType, null: false

    def resolve
      # TODO: ログインは未実装なので仮に先頭ユーザーを返す
      ::User.first
    end
  end
end
