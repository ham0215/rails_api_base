class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :char_type, null: false, limit: 20
      t.bigint :char_id, null: false

      t.timestamps
    end
  end
end
