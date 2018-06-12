class Produit < ApplicationRecord
  belongs_to :gamme
  has_many :reviews, dependent: :destroy
  has_many :order_items

  validates :marque, presence: true
  validates :nom, presence: true, uniqueness: true
  validates :reference, presence: true, uniqueness: true
  validates :photo, presence: true, uniqueness: true
  validates :quantite, presence: true
  validates :prix, presence: true
  validates :frais_de_port, presence: true
  validates :poids, presence: true
  validates :description, presence: true
  validates :composition, presence: true
  validates :utilisation, presence: true

  default_scope { where(active: true) }
end



