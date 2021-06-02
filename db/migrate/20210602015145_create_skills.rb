class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.references :profile, null: false, index: { name: 'profile_id' }, foreign_key: { name: 'profile_id_on_skills', on_delete: :cascade }
      t.string :name, null: false

      t.timestamps
    end
  end
end
