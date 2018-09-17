# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


places = [
    { name: "Roscoe's Chicken And Waffles", address: "5006 Pico Blvd, Los Angeles, CA 90019", good_for: "Breakfast", comment: "Best chicken and waffles in the city"}
    { name: "Perch LA", address: "448 South Hill Los Angeles, CA 90013", good_for: "Brunch", comment: "A french inspired rooftop bistro"}
]

Place.create(places)