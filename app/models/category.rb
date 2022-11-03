class Category < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :subcategories
    extend FriendlyId
    friendly_id :name, use: :slugged
end
