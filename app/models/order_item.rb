class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :produit
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  # validate :product_present
  # validate :order_present

  before_save :finalize


  def unit_price
    if persisted?
      self[:unit_price]
    else
      produit.prix
    end
  end

  def total_price
    unit_price * quantity
  end

  def available_quantity
    produit.quantite
  end

private


  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
