class CreateSubModelUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_model_users do |t|

      t.timestamps
    end
  end
end
