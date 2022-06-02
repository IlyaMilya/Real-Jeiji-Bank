class CreateExchanges < ActiveRecord::Migration[6.1]
  def change
    create_table :exchanges do |t|
      t.integer :user_id
      t.float :balance
      t.integer :first_cryp_id
      t.integer :second_cryp_id
      t.integer :third_cryp_id

      t.timestamps
    end
  end
end
