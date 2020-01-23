class Restaurant < ApplicationRecord
  # :name
  # :address
  # :phone_number
  # :category
  has_many :reviews, dependent: :destroy
  validates(:name, uniqueness: true, presence: true)
  validates(:address, presence: true)
  validates(:category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] })
end
