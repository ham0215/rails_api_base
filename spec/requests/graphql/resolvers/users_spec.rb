require 'rails_helper'

RSpec.describe Resolvers::Users, type: :request do
  describe 'users' do
    subject { post graphql_path, params: params }

    let(:params) { { query: query, variables: variables.to_json } }
    let(:variables) { {} }

    let(:users) { create_list(:user, 3) }
    let(:books) { create_list(:book, 3) }

    before do
      books
      users.each do |user|
        create(:profile, user: user)
        create_list(:portfolio, 3, user: user)
        books.each do |book|
          create(:user_book, user: user, book: book)
        end
      end
    end

    shared_examples 'get users' do
      it do
        subject
        body = JSON.parse(response.body)
        expect(body['error']).to be_nil
        expect(body['data']).to be_present
      end
    end

    context 'user only' do
      let(:query) do
        <<~"GQL"
          query Users {
            users {
              nodes {
                name
              }
            }
          }
        GQL
      end
      it_behaves_like 'get users'
    end

    context 'users with profile, portfolios, books' do
      let(:query) do
        <<~"GQL"
          query Users {
            users {
              nodes {
                name
                profile {
                  address
                }
                portfolios {
                  nodes {
                    name
                    url
                  }
                }
                books {
                  nodes {
                    title
                  }
                }
              }
            }
          }
        GQL
      end

      it_behaves_like 'get users'
    end
  end
end
