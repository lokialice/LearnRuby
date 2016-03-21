cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
car_not_driven = cars - drivers
car_driven = drivers
carpool_capacity = car_driven  * space_in_a_car
avarage_passengers_per_car = passengers / car_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{car_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{avarage_passengers_per_car} in each car."