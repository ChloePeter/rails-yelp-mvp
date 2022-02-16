class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
# has_one :name, :address, :category
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
end
