class CreateSavingsAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :savings_accounts do |t|
      t.integer :user_id
      t.integer :balance

      t.timestamps
    end
  end
end
