#ruby dot "." and double Colon "::" operators:

MR_COUNT = 0
module Foo
	MR_COUNT = 0
	::MR_COUNT = 1
	MR_COUNT = 2
end

puts MR_COUNT
puts Foo::MR_COUNT

#second example

CONST = ' out there'
class Inside_one
	CONST = proc {' in there'}
	def where_is_my_COUNT
		::CONST + ' inside one'
	end
end

class Inside_two
	CONST = ' inside two'
	def where_is_my_COUNT	
		CONST
	end
end

puts Inside_one.new.where_is_my_COUNT
puts Inside_two.new.where_is_my_COUNT
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST