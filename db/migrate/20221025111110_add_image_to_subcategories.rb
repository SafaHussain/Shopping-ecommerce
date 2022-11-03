class AddImageToSubcategories < ActiveRecord::Migration[6.0]
  def change
    add_column :subcategories, :image, :string
  end
end
