class ChangeDatatypeOfColumnUserid < ActiveRecord::Migration[6.1]
  def change
    change_column :savings, :user_id, :integer 
  end
end
