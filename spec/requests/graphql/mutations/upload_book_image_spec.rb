require 'rails_helper'

RSpec.describe Mutations::UploadBookImage, :request do
  describe 'uploadBookImage' do
    subject { post graphql_path, params: params }

    let(:params) do
      {
        operations: {
          query: query,
          variables: variables
        }.to_json,
        map: { '0' => [file_map] }.to_json,
        '0' => upload_file
      }
    end

    let(:query) do
      <<~"GQL"
        mutation UploadBookImage($input: UploadBookImageInput!) {
          uploadBookImage(input: $input) {
            path
            name
            contentType
          }
        }
      GQL
    end

    let(:variables) do
      {
        input: {
          bookId: book.id,
          image: ''
        }
      }
    end
    let(:book) { create :book }

    let(:file_map) { 'variables.input.image' }
    let(:upload_file) { fixture_file_upload(upload_file_name, content_type) }
    let(:upload_file_name) { 'book.png' }
    let(:content_type) { 'image/png' }

    it 'ファイルがアップロードされること' do
      subject
      # データの確認
      book_image = BookImage.find_by(book: book)
      expect(book_image.file.attached?).to be_truthy

      # レスポンスの確認
      response_body = JSON.parse(response.body)
      response_data = response_body.dig('data', 'uploadBookImage')
      expect(response_data['name']).to eq upload_file_name
      expect(response_data['contentType']).to eq content_type
      expect(response_data['path']).to start_with '/attachments/blobs/proxy/'
    end
  end
end
