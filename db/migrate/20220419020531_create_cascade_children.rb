class CreateCascadeChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :cascade_children do |t|
      t.references :parent, null: false, index: { name: 'parent_id' }, foreign_key: { name: 'parent_id_on_cascade_children', on_delete: :cascade }

      t.timestamps
    end
  end
end
