class Equipment < ApplicationRecord
  belongs_to :character
  validates :name, :rarity, :effect, :description, :price, presence: true
end
