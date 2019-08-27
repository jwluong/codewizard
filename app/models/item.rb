class Item < ApplicationRecord
  has_and_belongs_to_many :characters
  
   def alreadyEquipped?
    equippedItems = []

    Character.all[0].items.each do |item|
      equippedItems << item.name
    end
    equippedItems.include? (self.name)
  end
  
end
