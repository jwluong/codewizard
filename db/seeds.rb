BattleLog.destroy_all
Question.destroy_all
Level.destroy_all

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


Level.all.each do |x|
  1.times do
    Question.create!(description: "Which is the correct answer?", options: ["a","b","c","d"], answer: "a", level: x)
  end
end

puts "Complete!"
