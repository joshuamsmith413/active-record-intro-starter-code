require 'faker'

#customer instances
ale = Customer.create(first_name: "ale", last_name: "Greg")
josh = Customer.create(first_name: "Josh", last_name: "Smith")
Customer.create(first_name: "Josh", last_name: "Yan")
Customer.create(first_name: "Paul", last_name: "Riviera")
Customer.create(first_name: "danny", last_name: "park")


#restaurant instances
pool = Restaurant.create(name: "the pool")
Restaurant.create(name: Faker::Name.name)
grill = Restaurant.create(name: "the grill")
Restaurant.create(name: "sundays in brooklyn")
Restaurant.create(name: "post")

#review instances
Review.create(restaurant_id: 1, customer_id: 2, rating: 6, content: "iogheirogeralkgroeitghireog")
