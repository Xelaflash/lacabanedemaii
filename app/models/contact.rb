class Contact
  include ActiveModel::Model
  attr_accessor :name, :email,:subject, :body
  validates :name, presence: true
  validates :email, presence: true
  validates :subject, presence: true
  validates :body, presence: true
end
