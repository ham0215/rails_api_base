require 'rails_helper'

RSpec.describe Resolvers::Users, type: :request do
  describe 'users' do
    subject { post graphql_path, params: params }

    let(:params) { { query: query, variables: variables.to_json } }
    let(:variables) { {} }

    let(:users) { create_list(:user, 3, :with_profile, :with_books) }

    before do
      users
    end

    let(:query) do
      <<~"GQL"
        query Users {
          users {
            nodes {
              id
              books {
                nodes {
                  id
                }
              }
              profile {
                id
              }
              portfolios {
                nodes {
                  id
                }
              }
            }
          }
        }
      GQL
    end

    it do
      subject
      body = JSON.parse(response.body)
      expect(body['errors']).to be_nil
      expect(body['data'].deep_symbolize_keys).to eq({
        users: {
          nodes: users.map do |user|
            {
              id: user.id,
              profile: {
                id: user.profile.id
              },
              books: {
                nodes: user.sorted_books.map { { id: _1.id } }
              },
              portfolios: {
                nodes: user.sorted_portfolios.map { { id: _1.id } }
              }
            }
          end
        }
      })
    end
  end
end
