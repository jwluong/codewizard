class Level < ApplicationRecord
  has_many :questions
  has_many :level_progresses
end
