class Character < ApplicationRecord
  belongs_to :user
  has_many :battle_logs
  has_and_belongs_to_many :equipments
  has_many :level_progresses
  validates :name, :gender, presence: true
end
