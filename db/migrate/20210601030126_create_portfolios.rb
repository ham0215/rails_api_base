class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.references :user, null: false, index: { name: 'user_id' }, foreign_key: { name: 'user_id_on_portfolios', on_delete: :cascade }
      t.string :name, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
