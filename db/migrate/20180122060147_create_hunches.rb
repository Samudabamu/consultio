class CreateHunches < ActiveRecord::Migration[5.1]
  def change
    create_table :hunches do |t|
      t.string :name
      t.integer :investment_type_id
      t.text :api

      t.timestamps
    end
  end
end
