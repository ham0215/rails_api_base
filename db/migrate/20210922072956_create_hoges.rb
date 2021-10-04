class CreateHoges < ActiveRecord::Migration[6.1]
  def change
    create_table :hoges do |t|
      t.integer :idx_num, null: false, index: { name: 'idx_num' }, default: 0
      t.integer :num, null: false, default: 0
      t.string :name

      t.timestamps
    end
  end
end
