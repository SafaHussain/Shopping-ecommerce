class AddSubtotalToCartitem < ActiveRecord::Migration[6.0]
  def change
    add_column :cartitems, :subtotal, :integer
  end
end
