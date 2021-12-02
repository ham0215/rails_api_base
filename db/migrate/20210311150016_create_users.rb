class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { name: 'email', unique: true }
      t.string :name, null: false
      t.string :nickname, null: false

      t.timestamps
    end
  end
end
