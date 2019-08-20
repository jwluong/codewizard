class RemoveLevelFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :level, :string
  end
end
