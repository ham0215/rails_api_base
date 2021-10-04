class CreateFugas < ActiveRecord::Migration[6.1]
  def change
    create_table :fugas do |t|
      t.references :hoge, null: false, index: { name: 'hoge_id' }, foreign_key: { name: 'hoge_id_on_fugas', on_delete: :cascade }
      t.integer :idx_num, null: false, index: { name: 'idx_num' }, default: 0
      t.integer :num, null: false, default: 0
      t.string :name

      t.timestamps
    end
  end
end
