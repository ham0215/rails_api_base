# frozen_string_literal: true

module Mutations
  class UploadBookImage < BaseMutation
    argument :book_id, Int, required: true
    argument :image, ApolloUploadServer::Upload, required: true

    type Types::BookImageType

    def resolve(book_id:, image:)
      book = Book.find book_id
      BookImage.transaction do
        book.create_book_image! unless book.book_image
        book.book_image.file.attach(io: image.to_io, filename: image.original_filename)
        book.book_image
      end
    end
  end
end
