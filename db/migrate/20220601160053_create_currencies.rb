class CreateCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
