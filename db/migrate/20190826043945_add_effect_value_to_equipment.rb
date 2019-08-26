class AddEffectValueToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :effect_value, :integer
  end
end
