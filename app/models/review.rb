class Review < ApplicationRecord
  belongs_to :user
  belongs_to :produit

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :recommend, presence: true
  validates :date, presence: true

end
