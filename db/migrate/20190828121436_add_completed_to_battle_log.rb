class AddCompletedToBattleLog < ActiveRecord::Migration[5.2]
  def change
    add_column :battle_logs, :completed, :string, default: "no"
  end
end
