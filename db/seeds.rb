# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
actor.save

# denzel = Actor.new({ first_name: "Denzel", last_name: "Washington", known_for: "Training Day" })
# denzel.save

# michael = Actor.new({ first_name: "Michael", last_name: "Bale", known_for: "The Dark Knight" })
# michael.save

# chris = Actor.new({ first_name: "Chris", last_name: "Evans", known_for: "Captain America" })
# chris.save
