class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.prix) : 0 }.sum
  end


private

  def set_order_status
    if
      self.order_status_id == nil?
      self.order_status_id = 1
    end

  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
