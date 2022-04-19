class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.references :parent, null: false, index: { name: 'parent_id' }, foreign_key: { name: 'parent_id_on_children' }

      t.timestamps
    end
  end
end
