class CreateLocks < ActiveRecord::Migration[6.1]
  def change
    create_table :locks do |t|
      t.integer :not_unique, null: false, index: { name: 'not_unique' }
      t.integer :not_index, null: false
    end
  end
end
