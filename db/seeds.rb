Review.destroy_all
Booking.destroy_all
Bike.destroy_all
User.destroy_all


user1 = User.create({
  first_name: 'John',
  last_name: 'Lennon',
  email: 'jonh.lennon@mail.com',
  password: '123456'
})

user2 = User.create({
  first_name: 'Gabriel',
  last_name: 'Ibanez',
  email: 'gabriel.ibanez@mail.com',
  password: '234567'
})

p "#{User.count} user"

bike1 = Bike.create({
  name: 'Yellow Submarine',
  brand: 'Beatles',
  category: 'Mountain bike',
  address: '16 villa Gaudelet, 75011, Paris',
  price_per_day: '15',
  user: user1
})

bike2 = Bike.create({
  name: 'Cycle',
  brand: 'Fast',
  category: 'City bike',
  address: '18 villa Gaudelet, 75011, Paris',
  price_per_day: '20',
  user: user2
})

p "#{Bike.count} bike"


booking1 = Booking.create({
  begining_date: Date.new(2019,05,01),
  end_date: Date.new(2019,05,02),
  total_price: 15,
  status:'finished',
  user: user1,
  bike: bike1
})

booking2 = Booking.create({
  begining_date: Date.new(2019,05,10),
  end_date: Date.new(2019,05,11),
  total_price: 15,
  status:'started',
  user: user2,
  bike: bike2
})
p "#{Booking.count} booking"

review1 = Review.create ({
  content: 'Nice bike!',
  rating: 4,
  booking: booking1
})

review2 = Review.create ({
  content: 'Nice bike!',
  rating: 5,
  booking: booking2
})
p "#{Review.count} review"

