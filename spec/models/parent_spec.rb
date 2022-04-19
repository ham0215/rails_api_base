require 'rails_helper'

RSpec.describe Parent, type: :model do
  describe '#destroy' do
    subject { parent.destroy }

    let(:parent) { create(:parent) }

    context 'RESTRICT' do
      let(:children) { create_list(:child, 3, parent:)}
      before do
        children
      end

      it 'destroys the parent' do
        expect { subject }.to raise_error(ActiveRecord::InvalidForeignKey)
        expect(Child.all.count).to eq 3
      end
    end

    context 'CASCADE' do
      let(:children) { create_list(:cascade_child, 3, parent:)}

      before do
        children
      end

      it 'destroys the parent' do
        subject
        expect(CascadeChild.all.count).to eq 0
      end
    end

    context 'SET NULL' do
      let(:children) { create_list(:set_null_child, 3, parent:)}

      before do
        children
      end

      it 'destroys the parent' do
        subject
        expect(SetNullChild.all.count).to eq 3
        expect(SetNullChild.where(id: children.map(&:id)).all? { _1.parent_id.nil? } ).to eq true
      end
    end
  end
end
