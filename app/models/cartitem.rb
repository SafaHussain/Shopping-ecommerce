class Cartitem < ApplicationRecord
    belongs_to :product
    belongs_to :cart

    def total(product,quantity)
        subtotal=quantity * product.price.to_i
      end
end
