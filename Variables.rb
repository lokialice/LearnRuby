$global_varible = 10
class Class1
	def print_global
		puts "Global varibale in Class1 is #$global_varible"
	end
end

class Class2
	def print_global
		puts "Global varibale in Class2 is #$global_varible"
	end
end

class1Obj = Class1.new
class1Obj.print_global
class2Obj = Class2.new
class2Obj.print_global

#instance varibale

class Customer 
	@@no_of_customers=0
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
    end
    def total_no_of_customers()
       @@no_of_customers += 9
       puts "Total number of customers: #@@no_of_customers"
    end
end

#Create Object

cust1=Customer.new("1", "John", "Widson Apartment, Ludiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

#Call methods
cust1.display_details()
cust2.display_details()
cust1.total_no_of_customers()
cust2.total_no_of_customers()

class Example
	VAR1 = 100
	VAR2 = 200
	def  show
		puts "Value of first Constant is #{VAR1}"
		puts "Value of first Constant is #{VAR2}"
	end
end

#Create Object
obj=Example.new()
obj.show


#Ruby Array

ary = [ "fred", 10, 3.14, "This is a String", "last element",]
ary.each do |i|
	puts i
end

#Ruby Hashes

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key,value|
	print key, " is ", value, "\n"
end

#Ruby ranges
(10...15).each do |n|
	print n, ' '
end