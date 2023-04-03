require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  describe 'user' do
    subject { post graphql_path, params: params }

    let(:params) { { query:, variables: variables.to_json } }
    let(:variables) { { id: user.id } }

    let(:user) { create(:user) }

    let(:query) do
      <<~"GQL"
        query User($id: Int!) {
          user(id: $id) {
            id
          }
        }
      GQL
    end

    it do
      subject
      body = JSON.parse(response.body)
      expect(body['errors']).to be_nil
      expect(body['data'].deep_symbolize_keys).to eq({ user: { id: user.id } })
    end

    context 'slow fields' do
      let(:query) do
        <<~"GQL"
          query User($id: Int!) {
            user(id: $id) {
              id
              slowField
              slowField2
            }
          }
        GQL
      end

      it do
        subject
        body = JSON.parse(response.body)
        expect(body['errors']).to be_nil
        expect(body['data'].deep_symbolize_keys).to eq({
          user: {
            id: user.id,
            slowField: 'slow_field',
            slowField2: 'slow_field2'
          }
        })
      end
    end
  end
end
