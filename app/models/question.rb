class Question < ApplicationRecord
  has_many :battle_logs
  belongs_to :level
  validates :description, :options, :answer, :level, presence: true
end
