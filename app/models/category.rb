class Category < ApplicationRecord
    # a restaurant will belongs to an category
    belongs_to :category

    has_many :product_categories
    has_many :orders
end
