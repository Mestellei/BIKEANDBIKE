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
  name: 'Moumoute',
  brand: 'Beatles',
  category: 'Single',
  address: '99 rue Oberkampf, 75011, Paris',
  picture: File.new("app/assets/images/MOUMOUTEvelo.jpg"),
  price_per_day: '10',
  user: user1
})

bike2 = Bike.create!({
  name: 'Squeleton',
  brand: 'Fast',
  category: 'Single',
  address: '21 rue des Abbesses, 75018, Paris',
  price_per_day: '20',
  picture: File.new("app/assets/images/SQUELETTEvelo.jpg"),
  user: user2
})

bike3 = Bike.create!({
  name: 'Formule1',
  brand: 'Fast',
  category: 'Single',
  address: '30 rue Saint Maur, 75011, Paris',
  price_per_day: '20',
  picture: File.new("app/assets/images/REDvelo.jpg"),
  user: user2
})

bike4 = Bike.create!({
  name: 'BurningMan',
  brand: 'Fast',
  category: 'Single',
  address: '2 rue des trois couronnes, 75011, Paris',
  price_per_day: '15',
  picture: File.new("app/assets/images/velojaune.jpg"),
  user: user2
})

bike5 = Bike.create!({
  name: 'Unicorn',
  brand: 'Fast',
  category: 'Single',
  address: '10 rue condillac, 75011, Paris',
  price_per_day: '20',
  picture: File.new("app/assets/images/WHITEvelo.jpg"),
  user: user2
})

bike6 = Bike.create!({
  name: 'Lesbosfamily',
  brand: 'Fast',
  category: 'Family',
  address: '18 villa Gaudelet, 75011, Paris',
  price_per_day: '20',
  picture: File.new("app/assets/images/LesbosFamily.png"),
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

