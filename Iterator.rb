#example

ary = [1,2,3,4,5]
ary.each do |i|
	puts i
end

#ruby collect iterator

a = [1,2,3,4,5]
b = Array.new 
b = a.collect{|x| 10*x}
puts b