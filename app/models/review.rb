class Review < ApplicationRecord
  belongs_to :user
  belongs_to :produit
  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :author, presence: true
end
