class Cartitem < ApplicationRecord
    belongs_to :product
    belongs_to :cart

    def total(product,quantity,cartitem)
        cartitem.subtotal=quantity * product.price.to_i
      end
    
end
