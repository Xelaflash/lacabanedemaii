class Review < ApplicationRecord
  belongs_to :user
  belongs_to :produit

  validates :content, presence: true
  validates :rating, presence: true
  validates :recommend, presence: true
  validates :date, presence: true

end
