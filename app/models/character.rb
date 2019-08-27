class Character < ApplicationRecord
  belongs_to :user
  has_many :battle_logs
  has_and_belongs_to_many :items
  has_many :level_progresses
  validates :name, :gender, presence: true
  
  def enoughCoins?(price)
    self.coin >= price
  end

end
