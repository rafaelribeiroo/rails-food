class Category < ApplicationRecord
    # a restaurant will belongs to an category
    has_many :restaurants

    validates :title, presence: true

    has_one_attached :image
end
