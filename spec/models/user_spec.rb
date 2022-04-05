require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.save_selected_avatars' do
    subject { User.save_selected_avatars(users.map(&:id)) }

    let(:users) do
       [
         create(:user, avatar:),
         create(:user, avatar: avatar1),
         create(:user, avatar: avatar2),
       ]
    end
    let(:avatar) { fixture_file_upload('11m.jpg', 'image/jpeg') }
    let(:avatar1) { fixture_file_upload('ham2.jpg', 'image/jpeg') }
    let(:avatar2) { fixture_file_upload('ham3.jpg', 'image/jpeg') }
    let(:tmp_dir) { Rails.root.join('tmp', 'avatars') }
    let(:zip_file_path) { Rails.root.join('tmp', 'avatars.zip') }

    before do
      FileUtils.rm_f(tmp_dir)
      FileUtils.rm_f(zip_file_path)
    end

    it "saved a zip of the selected user's avatars." do
      subject
      expect(File.exist?(zip_file_path)).to be true
      Zip::File.open(zip_file_path) do |zip_file|
        expect(zip_file.count).to eq(3)
        zip_file.each_with_index do |entry, i|
          expect(entry.name).to eq users[i].avatar.filename.to_s
        end
      end
    end
  end
end
