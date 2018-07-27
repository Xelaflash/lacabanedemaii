class Gamme < ApplicationRecord
  extend FriendlyId
  has_many :produits
  validates :name, presence: true

  friendly_id :id , use: :slugged, slug_column: :name
end
