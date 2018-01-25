class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :hunch_id
      t.integer :cart_id
      t.integer :quantity

      t.timestamps
    end
  end
end
