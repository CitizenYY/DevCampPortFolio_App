# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet"
  )
end

puts "10 blog posts created."

5.times do |skill|
  Skill.create!(
    title: "Ruby on Rails #{skill}",
    skill_percent: 20
  )
end

puts "5 skills created."

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "THP-Next, Greeny ZeroWaste, Créeons la Coop",
    main_image: "https://via.placeholder.com/300"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Vue JS",
    body: "THP-Next, Greeny ZeroWaste, Créeons la Coop",
    main_image: "https://via.placeholder.com/300"
  )
end

puts "9 portfolio items created."
