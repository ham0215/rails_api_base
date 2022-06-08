class CreateSubModelBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_model_books do |t|
      t.references :sub_model_user, null: false, index: { name: 'sub_model_user_id' }, foreign_key: { name: 'sub_model_user_id_on_sub_model_users', on_delete: :cascade }
      t.references :user, null: false, index: { name: 'user_id' }, foreign_key: { name: 'user_id_on_sub_model_users', to_table: :sub_model_users, on_delete: :cascade }

      t.timestamps
    end
  end
end
