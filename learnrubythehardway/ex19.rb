
def cheese_and_crackers(cheese_count, boxes_of_crakers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crakers} boxes of crakers"
	puts "Man that's enough for a party!"
	puts "Get a blanknet.\n"
end

puts "We can just give the function numbers directly: "
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script"
amount_of_cheese = 10
amount_of_cracker = 50

cheese_and_crackers(amount_of_cheese, amount_of_cracker)

puts "We cam evem do matcho inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combime the two., variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_cracker + 1000)