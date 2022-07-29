require 'rails_helper'

RSpec.describe NullUniqColumn, type: :model do
  describe '.create!' do
    subject { NullUniqColumn.create!(status:) }

    context 'when stats is nil' do
      let(:status) {}

      before do
        NullUniqColumn.create!(status:)
      end

      it 'created duplicate record' do
        subject
        expect(NullUniqColumn.where(status:).count).to eq(2)
      end
    end

    context 'when stats is not nil' do
      let(:status) { 1 }

      before do
        NullUniqColumn.create!(status:)
      end

      it 'not created duplicate record' do
        expect { subject }.to raise_error ActiveRecord::RecordNotUnique
      end
    end
  end
end
