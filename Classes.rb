#defining a class in Ruby

class Customer
end

#variable
class Customer
	@@no_of_customer=0
end

#creating object in Ruby using new method

cust1 = Customer.new
cust2 = Customer.new 

#custom method to create Ruby object

class Customer
	@@no_of_customer=0
	def initialize(id, name, addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire Road, Khandala")

#member function in Ruby class

class Sample
	def hello
		puts "Hello Ruby!"
	end
end

obj = Sample.new
obj.hello