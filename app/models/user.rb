class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :nom, presence: true
  validates :prenom, presence: true
  validates :adresse, presence: true
  validates :telephone, presence: true, uniqueness: true

  after_create :send_welcome_email

  # For activeadmin
  def name
    "#{email}"
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
