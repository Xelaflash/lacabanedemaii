class OrderItem < ApplicationRecord
  belongs_to :produit
  belongs_to :order
end
