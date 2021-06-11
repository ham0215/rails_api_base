class CreateBookImages < ActiveRecord::Migration[6.1]
  def change
    create_table :book_images do |t|
      t.references :book, null: false, index: { name: 'book_id' }, foreign_key: { name: 'book_id_on_book_images', on_delete: :cascade }

      t.timestamps
    end
  end
end
