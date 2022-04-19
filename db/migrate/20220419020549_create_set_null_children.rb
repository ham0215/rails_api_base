class CreateSetNullChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :set_null_children do |t|
      t.references :parent, null: true, index: { name: 'parent_id' }, foreign_key: { name: 'parent_id_on_set_null_children', on_delete: :nullify }

      t.timestamps
    end
  end
end
