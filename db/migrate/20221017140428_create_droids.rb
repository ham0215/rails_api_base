class CreateDroids < ActiveRecord::Migration[7.0]
  def change
    create_table :droids do |t|
      t.string :primary_function, null: false

      t.timestamps
    end
  end
end
