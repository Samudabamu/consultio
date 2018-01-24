class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.text :name
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
