class OrderItem < ApplicationRecord
  belongs_to :produits
  belongs_to :order
end
