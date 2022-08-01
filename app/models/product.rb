class Product < ApplicationRecord
      has_one_attached :image

      validates :name, :image, :price, :description, presence: true
      validates :price, numericality: { greater_than: 0 }
end
