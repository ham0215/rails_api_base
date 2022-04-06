require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.save_selected_avatars' do
    subject { User.save_selected_avatars(users.map(&:id)) }

    let(:users) do
      10.times.map do |i|
        create(:user, avatar:)
      end
    end
    let(:avatar) { fixture_file_upload('ham.jpg', 'image/jpeg') }
    let(:tmp_dir) { Rails.root.join('tmp', 'avatars') }
    let(:zip_file_path) { Rails.root.join('tmp', 'avatars.zip') }

    before do
      FileUtils.rm_rf(tmp_dir)
      FileUtils.rm_f(zip_file_path)
    end

    it "saved a zip of the selected user's avatars." do
      subject
      expect(File.exist?(zip_file_path)).to be true
      Zip::File.open(zip_file_path) do |zip_file|
        expect(zip_file.count).to eq(10)
        zip_file.each_with_index do |entry, i|
          user = users[i]
          expect(entry.name).to eq "#{user.id}_#{user.avatar.filename.to_s}"
        end
      end
    end
  end
end
