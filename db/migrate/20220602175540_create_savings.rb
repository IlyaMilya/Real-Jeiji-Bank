class CreateSavings < ActiveRecord::Migration[6.1]
  def change
    create_table :savings do |t|
      t.integer :user_id
      t.float :balance

      t.timestamps
    end
  end
end
