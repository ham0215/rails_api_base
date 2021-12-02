require 'rails_helper'

RSpec.describe Resolvers::Users, type: :request do
  describe 'users' do
    subject { post graphql_path, params: params }

    let(:params) { { query: query, variables: variables.to_json } }
    let(:variables) { {} }

    let(:users) { create_list(:user, 3) }

    before do
      users
    end

    shared_examples 'get users' do
      it do
        subject
        body = JSON.parse(response.body)
        expect(body['error']).to be_nil
        expect(body['data']).to be_present
      end
    end

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
end
