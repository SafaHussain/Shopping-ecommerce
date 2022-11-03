class RemoveSubcategoryIdToProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :subcategory_id
  end
end
