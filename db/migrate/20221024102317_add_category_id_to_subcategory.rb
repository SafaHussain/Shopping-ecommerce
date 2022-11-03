class AddCategoryIdToSubcategory < ActiveRecord::Migration[6.0]
  def change
    add_column :subcategories, :category_id, :string
    add_column :subcategories, :integer, :string
  end
end
