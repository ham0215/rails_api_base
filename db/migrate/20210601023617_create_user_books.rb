class CreateUserBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_books do |t|
      t.references :user, null: false, index: { name: 'user_id' }, foreign_key: { name: 'user_id_on_user_books', on_delete: :cascade }
      t.references :book, null: false, index: { name: 'book_id' }, foreign_key: { name: 'book_id_on_user_books', on_delete: :cascade }

      t.timestamps
    end
  end
end
