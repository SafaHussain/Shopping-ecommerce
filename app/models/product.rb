class Product < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:finders]
    belongs_to :subcategory
    enum status: [:available, :available_on_order, :unavailable]
    mount_uploader :image, ImageUploader

    has_rich_text :description
    belongs_to :Cartitem

end
