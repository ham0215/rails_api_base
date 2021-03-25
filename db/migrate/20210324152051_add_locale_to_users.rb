class AddLocaleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :locale, :integer, limit: 4, default: 0, after: :name, null: false
  end
end
