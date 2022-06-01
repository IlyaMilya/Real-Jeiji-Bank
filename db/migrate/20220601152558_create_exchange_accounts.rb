class CreateExchangeAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :exchange_accounts do |t|
      t.integer :user_id
      t.integer :balance
      t.integer :currencies

      t.timestamps
    end
  end
end
