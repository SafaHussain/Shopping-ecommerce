class AddCartIdToCartitems < ActiveRecord::Migration[6.0]
  def change
    add_reference :cartitems, :cart, null: false, foreign_key: true
  end
end
