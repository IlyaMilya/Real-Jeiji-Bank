class CreateCheckings < ActiveRecord::Migration[6.1]
  def change
    create_table :checkings do |t|
      t.integer :user_id
      t.float :balance

      t.timestamps
    end
  end
end
