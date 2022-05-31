class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.float :balance
      t.string :account_type

      t.timestamps
    end
  end
end
