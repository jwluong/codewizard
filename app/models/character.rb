class Character < ApplicationRecord
  belongs_to :user
  has_many :battle_logs
  has_and_belongs_to_many :items
  has_many :level_progresses
  validates :name, :gender, presence: true
  validates :name, length: { maximum: 10 }

  def enoughCoins?(price)
    self.coin >= price
  end

  def maxHealth
    health = 9 + self.lv
    self.items.each do |item|
      health += item.effect
    end
    health
  end

  def clear_level?(level)
    result = false
    battle_logs.where("completed = 'yes'").each do |log|
      result = true if level.questions[0] == log.question
    end
    return result
  end
end
