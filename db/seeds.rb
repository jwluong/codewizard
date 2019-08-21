# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Battle_log.destroy_all
# Level_progress.destroy_all
# Question.destroy_all
# Level.destroy_all
# Character.destroy_all
# User.destroy_all
l = Level.create!(name: "test#{Level.all.length+1}", number: (Level.all.length+1),track:"mid")
5.times do |num|
  des = "This is No.#{num+1} very very very very very very very very very very long question"
  op = ['1','2','3','4']
  ans = '4'
  q = Question.create!(description: des, options: op, answer: ans, level: l)
end

p 'run seed successfully'
