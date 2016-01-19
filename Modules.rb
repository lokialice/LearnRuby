=begin
#Module define in trig.rb file

module Trig
	PI = 3.141592654
	def Trig.sin(x)
	#..
	end
	def Trig.cos(x)
	#..
	end
end

#module define in moral.rb file

module Moral
	VERY_BAD = 0
	BAD = 1
	def Moral.sin(badness)
	#..	
	end
end

#require statement

$LOAD_PATH << '.'

require 'trig.rb'
require 'moral'

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)
=end

#Ruby include statement

$LOAD_PATH << '.'
require "support"

class Decade
include Week
	no_of_yrs = 10
	def no_of_months
		puts Week::FIRST_DAY
		number=10*12
		puts number
	end
end
d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months

#MIXIN in Ruby

module A
	def a1

	end
	def a2
		
	end
end

module B
	def b1
		
	end
	def b2
		
	end
end

class Sample
	include A
	include B

	def s1
		
	end
end

samp= Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1
