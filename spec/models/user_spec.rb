require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.save_selected_avatars' do
    subject { User.save_selected_avatars(user_ids) }

    let(:user_ids) do
       [
         create(:user, avatar:).id,
         create(:user, avatar: avatar1).id,
         create(:user, avatar: avatar2).id,
       ]
    end
    let(:avatar) { fixture_file_upload('ham.jpg', 'image/jpeg') }
    let(:avatar1) { fixture_file_upload('ham2.jpg', 'image/jpeg') }
    let(:avatar2) { fixture_file_upload('ham3.jpg', 'image/jpeg') }

    it "saved a zip of the selected user's avatars." do
      subject
    end
  end
end
