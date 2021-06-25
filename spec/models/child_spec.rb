require 'rails_helper'

RSpec.describe Child, type: :model do
  let(:parent) { create(:parent) }

  describe 'destroy child' do
    subject { parent.child.destroy }

    let!(:parent) { create(:parent) }
    let!(:child) { create(:child, parent: parent) }

    # こちらは失敗する
    it 'statusが0に更新されること' do
      expect { subject }.to change { Child.exists?(id: child.id) }.from(true).to(false).
        and change { Parent.find(parent.id).status }.from(1).to(0)
    end

    # こちらは成功する
    it 'statusが0に更新されること' do
      expect { subject }.to change { Parent.find(parent.id).status }.from(1).to(0).
        and change { Child.exists?(id: child.id) }.from(true).to(false)
    end
  end
end
