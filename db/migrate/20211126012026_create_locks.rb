class CreateLocks < ActiveRecord::Migration[6.1]
  def change
    create_table :locks do |t|
      t.bigint :not_unique, null: false, index: { name: 'not_unique' }
      t.bigint :not_index, null: false
    end
  end
end
