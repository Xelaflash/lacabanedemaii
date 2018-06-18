class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :produit

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  validate :order_present

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

  def unit_shipping
    produit.frais_de_port
  end

  def available_quantity
    produit.quantite
  end




private

  def product_present
    if produit.nil?
      errors.add(:produit, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:unit_shipping] = unit_shipping
    self[:total_price] = quantity * self[:unit_price]
  end
end

