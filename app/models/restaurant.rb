class Restaurant < ApplicationRecord

  RESTAURANT_CATEOGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: RESTAURANT_CATEOGORIES }
  has_many :reviews, dependent: :destroy
end
