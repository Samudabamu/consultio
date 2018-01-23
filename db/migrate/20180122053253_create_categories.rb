class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.text :investment_type
      t.text :image

      t.timestamps
    end
  end
end
