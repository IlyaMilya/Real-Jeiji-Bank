class ChangeBalanceColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :checking_accounts, :balance, :float
    change_column :savings_accounts, :balance, :float
  end
end
