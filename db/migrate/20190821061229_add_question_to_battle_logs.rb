class AddQuestionToBattleLogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :battle_logs, :question, foreign_key: true
    remove_reference :battle_logs, :user, index: true, foreign_key: true
  end
end
