class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.integer 'status', limit: 1, null: false, unsigned: true, default: 0

      t.timestamps
    end
  end
end
