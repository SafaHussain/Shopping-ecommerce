class Subcategory < ApplicationRecord
    belongs_to :category
    has_many :products
    mount_uploader :image, ImageUploader
    extend FriendlyId
    friendly_id :name, use: :slugged
end