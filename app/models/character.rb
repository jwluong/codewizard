class Character < ApplicationRecord
  belongs_to :user
  has_many :battle_logs
  has_many :equipments
  validates :name, :gender, presence: true
end
