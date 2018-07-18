class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews

  validates :email, presence: true, uniqueness: true
  validates :nom, presence: true
  validates :prenom, presence: true
  validates :adresse, presence: true
  validates :telephone, presence: true, uniqueness: true

  # For activeadmin
  def name
    "#{prenom.capitalize} #{nom.capitalize}"
  end

end
