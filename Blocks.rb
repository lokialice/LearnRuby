def test
	puts "You are in the method"
	yield
	puts "You are again back to the method"
	yield
end

test { puts "You are in the block" }

def test1
 	yield 5
 	puts "You are in the method test1"
 	yield 100	
end

test1 { |i| puts "You are in the block #{i}" }

#block and method

def test2
	yield
end

test2 { puts "hello word!"}

def test3(&block)
	block.call
end

test3 { puts "Hello World!"}

#begin and end block

begin #code block
	#main code
end #code block