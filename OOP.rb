#ruby class definition
=begin
class Box
	code
end

#define ruby objects

box1 = Box.new
box2 = Box.new

#the initialize method

class Box
	def initialize(w,h)
		#assign instance variables
		@width,@height = w, h
	end
end

#the accessor & setter methods

#define a class
 class Box
 	#constructor method
 	def initialize(w, h)
 		@width, @height = w, h
 	end

 	#accessor methods
 	def printWidth
 		@width
 	end

 	def printHeight
 		@height
 	end
 end

 #create an object
box = Box.new(10, 20)
#use accessor methods
x = box.printWidth()
y = box.printHeight()

puts "Width of the box is: #{x}"
puts "Heigh of the box is: #{y}"


#define a class
class Box
	#constructor method
	def initialize(w, h)
		@width = w
		@height = h
	end

	#accessor methods
	def getWidth
		@width
	end
	def getHeight
		@height
	end

	#setter methods
	def setWidth=(value)
		@width = value
	end
	def setHeight=(value)
		@height = value
	end
end

#create an object 
box = Box.new(10, 20)

#use setter methods
box.setWidth = 30
box.setHeight = 50

#use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is: #{x}"
puts "Heigh of the box is: #{y}"


#the instance methods

class Box
	#constructor method
	def initialize(w,h)
		@width = w
		@height = h		
	end
	#instance method
	def getArea
		@width * @height
	end
end

#create an object
box = Box.new(10, 20)

#call instance methods
a = box.getArea()
puts "Area of the box is: #{a}"

#the class methods & variables

class Box
	# initialize our class variables
	@@count = 0
	def initialize(w, h)
		#assign instance variables
		@width = w
		@height = h
		@@count += 1
	end

	def self.printCount()
		puts "Box count is : #@@count"
	end
end

#create two object
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

#call class method to print box count
Box.printCount()

#the to_s method

class Box
	#constructor method
	def initialize(w, h)
		@width = w
		@height = h
	end
	#define to_s method
	def to_s
		"(w:#@width, h:#@height)" #string formatting object.
	end
end

#create an object
box = Box.new(10, 34)

#to_s method will be called in reference of string automatically
puts "String representation of box is: #{box}"


#access control

#define a class

class Box
	#constructor method
	def initialize(w, h)
		@width = w
		@height = h
	end

	#instance method by default it is public
	def getArea
		getWidth() * getHeight()
	end

	#define private accessor methods
	def getWidth
		@width
	end
	def getHeight
		@height
	end

	#make them private
	private :getWidth,:getHeight

	#instance method to print area
	def printArea
		@area = getWidth() * getHeight()
		puts "Big box area is :#@area"		
	end
	#make it protected
	protected :printArea
end

#create an object
box = Box.new(15, 10)

#call instance methods
a = box.getArea()
puts "Area of the box is: #{a}"

#try to call protected or methods
box.printArea()

#class inheritance

#define a class
class Box
	#constructor method
	def initialize(w, h)
		@width = w
		@height = h		
	end

	#instance method
	def getArea
		@width * @height
	end
end

#define a subclass

class BigBox < Box

	#add a new instance method
	def printArea
		@area = @width * @height
		puts "Big box area is :#@area"
	end
end

#create an object
box = BigBox.new(21,12)

#print the area
box.printArea();

#method overriding

#define a class

class Box
	#constructor method
	def initialize(w, h)
		@width = w
		@height = h
	end

	#instance method
	def getArea
		@width * @height
	end
end

#define a subclass
class BigBox < Box
	#change existing getArea method as follows
	def getArea
		@area = @width * @height
		puts "Big box area is: #@area"
	end
end

#create an object
box = BigBox.new(9, 8)
#print the area using overriden method

box.getArea()


#operator overloading

class Box
	def initialize(w, h)
		@width = w
		@height = h
	end

	def +(other) #define + to do vector addition
		Box.new(@width + other.width,@height + other.height)		
	end

	def -@ #define unary minus to negate width and height
		Box.new(-@width,-@height)
	end

	def *(scalar) #to perform scalar multiplication
		Box.new(@width*scalar,@height*scalar)
	end
end


#freezing object

#define a class

class Box
	#constructor method
	def initialize(w, h)
		@width = w
		@height = h
	end

	#accessor methods
	def getWidth
		@width
	end
	def getHeight
		@height
	end

	#setter methods
	def setWidth=(value)
		@width = value
	end

	def setHeight=(value)
		@height = value
	end
end

#create an object
box = Box.new(5,9)

#let us freez this object
box.freeze
if(box.frozen?)
	puts "Box object is frozen object"
else
	puts "Box object is normal object"
end

#now try using setter methods
box.setWidth = 21
box.setHeight = 9

#use accessor methods
x = box.getWidth()
y= box.getHeight()

puts "Width of the box is: #{x}"
puts "Heigh of the box is: #{y}"


#class constant

#define a class
class Box
	BOX_COMPANY = "TATA Inc"
	BOXWEIGHT = 10
	#constructor methods
	def initialize(w, h)
		@width = w
		@height = h		
	end

	#instance method
	def getArea
		@width * @height
	end
end

#create an object
box = Box.new(12,21)

#call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"

#define a class
class Box
	attr_accessor :width, :height

	#constructor method
	def initialize(w, h)
		@width = w
		@height = h
	end

	#instance method
	def getArea
		@width * @height
	end
end

#create an object using new
box1 = Box.new(2,4)
#create another object using allocate
box2 = Box.allocate

#call instance method using box1
a = box1.getArea()
puts "Area of the box is: #{a}"

#call instance  method using box2
a = box2.getArea()
puts "Area of the box is: #{a}"
=end

#class infomation

class Box
	#print class infomation
	puts "Type of self = #{self.type}"
	puts "Name of self = #{self.name}"
end
