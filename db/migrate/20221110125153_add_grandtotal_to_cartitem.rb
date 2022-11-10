class AddGrandtotalToCartitem < ActiveRecord::Migration[6.0]
  def change
    add_column :cartitems, :grandtotal, :integer
  end
end
