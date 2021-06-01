class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, index: { name: 'user_id' }, foreign_key: { name: 'user_id_on_profiles', on_delete: :cascade }
      t.string :address

      t.timestamps
    end
  end
end
