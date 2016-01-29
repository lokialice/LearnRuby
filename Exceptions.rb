begin
	file = open("/unexistant_file")
	if file
		puts "File open successfully"
	end
rescue 
	file = STDIN
end

print file, "==", STDIN, "\n"

#retry statement

begin
	file = open("/unexistant_file")
	if file
		puts "File opened successfully "
	end
rescue
	fname = "existant_file"
	retry
end


#raise statement

begin
	puts 'I am before the raise.'
	raise 'An error has ocurred'
	puts 'I am after the raise.'
rescue 
	puts 'I am rescued.'
end
puts 'I am after the begin block'

#one more

begin
	raise 'A test exception.'
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
end

#use ensure statement

begin
	raise 'A test exception'
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
ensure
	puts "Ensuring execution"
end

#using else statement

begin
	#raise 'A test exception.'
	puts 'I\'m not raising exception'
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
else
	puts "Congratulations -- no error"
ensure
	puts "Ensuring execution"
end


#using catch and throw

def promptAndGet(prompt)
	print prompt
	res = readline.chomp
	throw :quitRequested if res == "!"
	return res
end

catch :quitRequested do
	name = promptAndGet("Name: ")
	age = promptAndGet("Age: ")
	sex = promptAndGet("sex: ")
	#..
	# process information
end
promptAndGet("Name:")


