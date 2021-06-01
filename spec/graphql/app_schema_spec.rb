require 'rails_helper'

RSpec.describe AppSchema do
  let(:current_definition) { described_class.to_definition.chomp }
  let(:printout_definition) { File.read(Rails.root.join('docs/graphql/schema.graphql')).chomp }

  it 'equals dumped schema, `rails graphql:schema:dump` please!' do
    expect(current_definition).to eq(printout_definition)
  end
end
