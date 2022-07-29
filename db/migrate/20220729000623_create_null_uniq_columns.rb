class CreateNullUniqColumns < ActiveRecord::Migration[7.0]
  def change
    create_table :null_uniq_columns do |t|
      t.integer 'status', limit: 1, null: true, unsigned: true, index: { name: 'status', unique: true }

      t.timestamps
    end
  end
end
