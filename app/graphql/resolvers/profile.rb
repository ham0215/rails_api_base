# frozen_string_literal: true

module Resolvers
  class Profile < Resolvers::BaseResolver
    description 'プロフィールを取得する'

    argument :user_id, Int, required: true

    type Types::UserType, null: false

    def resolve(user_id:)
      ::User.find user_id
    end
  end
end
