class Contact
  include ActiveModel::Model
  attr_accessor :name, :email,:phone_number, :body
  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :body, presence: true
end
