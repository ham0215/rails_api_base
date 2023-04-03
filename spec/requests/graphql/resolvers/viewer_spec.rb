require 'rails_helper'

RSpec.describe Resolvers::Books, type: :request do
  describe 'viewer' do
    subject { post graphql_path, params: params }

    let(:params) { { query:, variables: variables.to_json } }
    let(:variables) { {} }

    let!(:user) { create(:user) }

    let(:query) do
      <<~"GQL"
        query Viewer {
          viewer {
            id
          }
        }
      GQL
    end

    it do
      subject
      body = JSON.parse(response.body)
      expect(body['errors']).to be_nil
      expect(body['data'].deep_symbolize_keys).to eq({ viewer: { id: user.id } })
    end

    context 'heavy fields' do
      let(:query) do
        <<~"GQL"
          query Viewer {
            viewer {
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
          viewer: {
            id: user.id,
            slowField: 'slow_field',
            slowField2: 'slow_field2'
          }
        })
      end
    end
  end
end
