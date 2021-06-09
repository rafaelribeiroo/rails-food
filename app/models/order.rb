class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products

  validates :name, :phone_number, :total_value, :city, :neighborhood, :street, :number, presence: true

  # Instead insert status order as 1 or 0, i'll insert a string
  enum status: { waiting: 0, delivered: 1}
end
