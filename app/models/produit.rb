class Produit < ApplicationRecord
  extend FriendlyId
  belongs_to :gamme
  has_many :reviews, dependent: :destroy
  has_many :order_items

  validates :marque, presence: true
  validates :nom, presence: true, uniqueness: true
  validates :reference, presence: true
  validates :photo, presence: true, uniqueness: true
  validates :quantite, presence: true
  validates :prix, presence: true
  validates :description, presence: true
  validates :composition, presence: true
  validates :utilisation, presence: true

  include PgSearch
  pg_search_scope :search_by_marque_and_nom,
                  :against => [ :nom, :marque ],
                  :using => {
                    :tsearch => { :prefix => true }
                  }

  friendly_id :id , use: :slugged, slug_column: :nom

# for active admin
  def name
    "Marque: #{marque.capitalize} - Nom: #{nom.capitalize} - ref: #{reference}"
  end
end
