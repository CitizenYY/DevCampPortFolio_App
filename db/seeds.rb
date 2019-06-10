# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "THP-Next, Greeny ZeroWaste, Créeons la Coop",
    main_image: "https://via.placeholder.com/300",
    thumb_image: "https://via.placeholder.com/150"
  )

puts "9 portfolio items created."
