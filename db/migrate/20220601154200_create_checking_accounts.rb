class CreateCheckingAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :checking_accounts do |t|
      t.integer :user_id
      t.integer :balance

      t.timestamps
    end
  end
end
