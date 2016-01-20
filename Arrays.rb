#creating arrays

names = Array.new
names = Array.new(20)

puts names.size
puts names.length

names = Array.new(4, "mac")

puts "#{names}"

nums = Array.new(10) { |e| e = e * 2}

puts "#{nums}"

# there is another method of array
numbers = Array.[](1,2,3,4,5)
#one more form of array creation is as follow
numberss = Array[1,2,3,4,5]

digits = Array(0..9)
puts "#{digits}"

#array bult-in method

nums = digits.at(6)

puts "#{nums}"

#try following example to pack various data

a = ["a","b","c"]
n= [65,66,67]
puts a.pack("A3A3A3")
puts a.pack("a3a3a3")
puts n.pack("ccc")