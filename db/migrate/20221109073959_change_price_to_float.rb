class ChangePriceToFloat < ActiveRecord::Migration[6.0]
  def change
    def self.up
      change_column :products, :price, :integer
    end
  
    def self.down
      change_column :products, :price, :string
    end
  end
end
