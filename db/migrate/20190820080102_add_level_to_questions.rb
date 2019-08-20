class AddLevelToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :level, foreign_key: true
  end
end
