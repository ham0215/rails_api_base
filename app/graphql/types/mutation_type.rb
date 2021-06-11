# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :upload_book_image, mutation: Mutations::UploadBookImage
  end
end
