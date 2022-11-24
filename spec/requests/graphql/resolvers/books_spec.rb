require 'rails_helper'

RSpec.describe Resolvers::Books, type: :request do
  describe 'books' do
    subject { post graphql_path, params: params }

    let(:params) { { query: query, variables: variables.to_json } }
    let(:variables) { { ids: books.map(&:id)} }

    let(:books) { create_list(:book, 3) }

    before do
      books
    end

    shared_examples 'get books' do
      it do
        subject
        body = JSON.parse(response.body)
        expect(body['errors']).to be_nil
        expect(body['data']).to be_present
      end
    end

    let(:query) do
      <<~"GQL"
        query Books() {
          books {
            nodes {
              id
              title
            }
          }
        }
      GQL
    end

    it_behaves_like 'get books'
  end
end
