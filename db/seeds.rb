puts "Destroying all reviews"
Review.destroy_all

Booking.destroy_all
Bike.destroy_all
User.destroy_all


user1 = User.create!({
  first_name: 'John',
  last_name: 'Lennon',
  email: 'jonh.lennon@mail.com',
  password: '123456'
})

user2 = User.create!({
  first_name: 'Gabriel',
  last_name: 'Ibanez',
  email: 'gabriel.ibanez@mail.com',
  password: '234567'
})

p "#{User.count} user"

bike1 = Bike.create!({
  name: 'Yellow Submarine',
  brand: 'Beatles',
  category: 'single',
  address: '16 villa Gaudelet, 75011, Paris',
  remote_picture_url: "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  price_per_day: '10',
  user: user1
})

bike2 = Bike.create!({
  name: 'Cycle',
  brand: 'Fast',
  category: 'family',
  address: '18 villa Gaudelet, 75011, Paris',
  price_per_day: '20',
  remote_picture_url: "https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  user: user2
})

bike3 = Bike.create!({
  name: 'Hola',
  brand: 'Fast',
  category: 'family',
  address: '30 rue Saint Maur, 75011, Paris',
  price_per_day: '20',
  remote_picture_url: "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  user: user2
})

bike4 = Bike.create!({
  name: 'Bella',
  brand: 'Fast',
  category: 'single',
  address: '2 rue des trois couronnes, 75011, Paris',
  price_per_day: '15',
  remote_picture_url: "https://images.unsplash.com/photo-1511994298241-608e28f14fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  user: user2
})

bike5 = Bike.create!({
  name: 'Captain',
  brand: 'Fast',
  category: 'family',
  address: '10 rue condillac, 75011, Paris',
  price_per_day: '20',
  remote_picture_url: "https://images.unsplash.com/photo-1507150080056-79542bdb9c59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  user: user2
})

bike6 = Bike.create!({
  name: 'Jack',
  brand: 'Fast',
  category: 'family',
  address: '18 villa Gaudelet, 75011, Paris',
  price_per_day: '20',
  remote_picture_url: "https://images.unsplash.com/photo-1484920274317-87885fcbc504?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80",
  user: user2
})


p "#{Bike.count} bike"


booking1 = Booking.create!({
  begining_date: Date.new(2019,05,01),
  end_date: Date.new(2019,05,02),
  total_price: 15,
  status:'finished',
  user: user1,
  bike: bike1
})

booking2 = Booking.create!({
  begining_date: Date.new(2019,05,10),
  end_date: Date.new(2019,05,11),
  total_price: 15,
  status:'started',
  user: user2,
  bike: bike2
})
p "#{Booking.count} booking"

review1 = Review.create! ({
  content: 'Nice bike!',
  rating: 4,
  booking: booking1
})

review2 = Review.create! ({
  content: 'Nice bike!',
  rating: 5,
  booking: booking2
})
p "#{Review.count} review"

