class Question < ApplicationRecord
  has_many :battle_logs
  validates :description, :options, :answer, :level, presence: true
end
