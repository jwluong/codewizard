class BattleLog < ApplicationRecord
  belongs_to :question
  belongs_to :character

  def play_time
    time = (updated_at - created_at).round
    Time.at(time).utc.strftime("%M:%S")
  end
end
