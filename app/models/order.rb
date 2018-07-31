class Order < ApplicationRecord
  belongs_to :order_status
  # belongs_to :user
  has_many :order_items
  before_validation :set_order_status, on: :create
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def shipping
    5.80
  end

  def total_price
    if (shipping < 50)
      (subtotal + shipping)
    else
      subtotal
    end
  end

  def free_shipping
    (50 - subtotal)
  end


private

  def set_order_status
      self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

  # def total
  #   self[:total_price] = total_price
  # end

end
