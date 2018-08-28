class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items, dependent: :destroy

  validates :client_name, presence: true, if: :validate_deliv_details?
  validates :deliv_adress_nb, presence: true, if: :validate_deliv_details?
  validates :deliv_adress, presence: true, if: :validate_deliv_details?
  validates :deliv_adress_zip_code, presence: true, if: :validate_deliv_details?
  validates :deliv_adress_city, presence: true, if: :validate_deliv_details?
  validates :deliv_adress_pays, presence: true, if: :validate_deliv_details?

  before_validation :set_order_status, on: :create
  geocoded_by :deliv_adress
  after_validation :geocode, if: :will_save_change_to_deliv_adress?
  before_save :update_subtotal
  before_save :total
  monetize :total_price_cents

  after_save :async_cleaning

  attr_accessor :validate_deliv_details

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def shipping
    5.80
  end

  def total_price
    if (subtotal < 50)
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

  def total
    self[:total_price] = total_price
  end

  def validate_deliv_details?
    validate_deliv_details == true
  end

  def async_cleaning
    DeleteOldEmptyOrdersJob.set(wait_until: Date.tomorrow.noon).perform_later(self.id)

  end

end
