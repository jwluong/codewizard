class Item < ApplicationRecord
  has_and_belongs_to_many :characters

   def alreadyEquipped?(character)
    equippedItems = []

    character.items.each do |item|
      equippedItems << item.name
    end
    equippedItems.include? (self.name)
  end

end
