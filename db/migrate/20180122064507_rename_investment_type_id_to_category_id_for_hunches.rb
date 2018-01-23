class RenameInvestmentTypeIdToCategoryIdForHunches < ActiveRecord::Migration[5.1]
  def change
    rename_column :hunches, :investment_type_id, :category_id
  end
end
