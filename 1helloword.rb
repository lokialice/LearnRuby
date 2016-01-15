
rescue Exception => e
	
end
puts "hello word"

print("Enter your name: ")
name = gets()
puts("Hello #{name}")

#Ruby is case sensitive

puts("\n\t#{(1+2)*3}\nGoodbye")

#Number


taxrate = 0.175
print "Enter price (ex tax):"
s = gets
subtotal = s.to_f
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"

#Test a condition: IF...THEN

taxrate = 0.175
print "Enter price (ex tax):"
s = gets
subtotal = s.to_f

if(subtotal < 0.0) then 
	subtotal = 0.0
end
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal + tax}"

#Local and global variables



localvar = "hello"
$globalvar = "goodbye"

def amethod
	localvar = 10
	puts (localvar)
	$globalvar = "bonjour"
	puts (localvar)
	puts ($globalvar)
end

def anothermethod
	localvar = 500
	$globalvar = "bonjour"
	puts (localvar)
	puts ($globalvar)
end

amethod
anothermethod

#Class & Object


class Dog
	def set_Name (aName)
		@myname = aName
	end

	def get_Name
		return @myname
	end

	def talk
		return 'woof!'
	end
end

mydog = Dog.new
mydog.set_Name('Fido')
puts(mydog.get_Name)
puts(mydog.talk)
#Instance variables

mydog.set_Name('Fido')
yourdog.set_Name('Bonzo')



#Message, methods and polymorphism

#Contructor - new and initalize

def initialize(aName, aDescription)
	@name = aName
	@aDescription = aDescription	
end


#Inspecting object

puts(Class.to_f)
puts(Object.to_f)
puts(String.to_f)
puts(100.to_f)
puts(Treasure.to_s)

t = Treasure.new("Sword", "A lovely Elvish weapon")
puts(t.to_s)
puts(t.inspect)

