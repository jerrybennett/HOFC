# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.destroy_all
10.times do
  Topic.create(title: Faker::Lorem.sentence(rand(4) + 1, true), description: Faker::Lorem.paragraphs(3, true).join('\n'))
end

Card.destroy_all
20.times do
  Card.create(title: Faker::Lorem.sentence(rand(4) + 1, true), content: Faker::Lorem.paragraphs(3, true).join('\n'), topic_id: Topic.all.sample.id)
end
