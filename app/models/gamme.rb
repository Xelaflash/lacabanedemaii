class Gamme < ApplicationRecord
  has_many :produits
  validates :name, presence: true
end
