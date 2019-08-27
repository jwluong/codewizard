BattleLog.destroy_all
Question.destroy_all
Level.destroy_all
Item.destroy_all

# DELETE BEFORE FINAL DEMO DAY
test = Character.first
test.coin = 100000
test.save
#

Level.create!(name: "Ruby Basics I", number: 1, track: "easy")
Level.create!(name: "Ruby Basics II", number: 2, track: "easy")
Level.create!(name: "Flow & Arrays", number: 3, track: "easy")
Level.create!(name: "Flow & Arrays II", number: 4, track: "easy")
Level.create!(name: "Iterators & Blocks", number: 5, track: "medium")
Level.create!(name: "Iterators & Blocks II", number: 6, track: "medium")
Level.create!(name: "Hash & Symbols", number: 7, track: "medium")
Level.create!(name: "Hash & Symbols II", number: 8, track: "medium")
Level.create!(name: "OOP Basics I", number: 9, track: "hard")
Level.create!(name: "OOP Basics II", number: 10, track: "hard")
Level.create!(name: "OOP Advanced I", number: 11, track: "hard")
Level.create!(name: "OOP Advanced II", number: 12, track: "hard")


Question.create!(description: "What is a method?", options: ["A set of expressions that returns a value", "A container for storing data", "A way to test applications", "A framework for creating applications"], answer: "A set of expressions that returns a value", level: Level.first)

Question.create!(description: "What does a ! at end of a method name mean?", options: ["It is an important method", "Nothing", "The method will permanently modify the value", "The method will return true or false"], answer: "The method will permanently modify the value", level: Level.first)

Question.create!(description: "Which method converts an integer to a string?", options: [".to_s", ".to_string", "METHOD: STRING CONVERT", ".convert_to_s"], answer: ".to_s", level: Level.first)

Question.create!(description: "How do you convert a string to an integer?", options: [".to_num", ".convert_to_int", ".to_int", ".to_i"], answer: ".to_i", level: Level.first)

Question.create!(description: "Which is not a class?", options: ["Number", "Symbol", "String", "Boolean"], answer: "Number", level: Level.first)


Level.all[1..12].each do |x|
  4.times do
    Question.create!(description: "Which is the correct answer?", options: ["a","b","c","d"], answer: "a", level: x)
  end
end

Item.create!(name: "Emerald Pendant", description: "Adds 1 health", effect: 1, price: "50", img: "pendant1.png")
Item.create!(name: "Ruby Necklace", description: "Adds 2 health", effect: 2, price: "100", img: "pendant2.png")

puts "Complete!"
