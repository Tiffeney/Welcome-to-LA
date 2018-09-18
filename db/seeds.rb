# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Tiffeney", email: "Tiffeney@test.co", password: "test")

@user = User.first

places = [
    { name: "Roscoe's Chicken And Waffles", address: "5006 Pico Blvd Los Angeles, CA 90019", good_for: "Breakfast", comment: "Best chicken and waffles in the city" },
    { name: "Perch LA", address: "448 South Hill Los Angeles, CA 90013", good_for: "Brunch", comment: "A french inspired rooftop bistro" },
    { name: "Bud Namu", address: "809 South Admore Los Angeles, CA 90005", good_for: "Dinner", comment: "All you can eat Korean BBQ, services is slow but the beef bulgogi is fire!" },
    { name: "The Cheesecake Factory", address: "The Grove Drive Los Angeles, CA 90036", good_for: "All hours of the day", comment: "The CCF has a little bit of everything but dont leave without trying the CHESSECAKE" }
]
@user.places.create(places)