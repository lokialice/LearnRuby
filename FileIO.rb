#puts statement

val1 = "This is variable one"
val2 = "This is variable two"

puts val1
puts val2

#gets statement

puts "Enter a value : "
val = gets
puts val

#putc statement

str = "Hello Ruby!"
putc str

#print statement

print "Hello World"
print "Good Morning"

#the sysread method

aFile = File.new("input.txt","r")
bFile = File.new("output.txt","r+")
cFile = File.new("cFile.txt","r+")
if aFile
	content = aFile.sysread(20)
	puts content
else
	puts "Unable to open file!"
end

if bFile
	bFile.syswrite("Welcome to Ruby!")
else
	puts "Unable to open file!"
end

if cFile
	cFile.syswrite("ABCDEF")
	aFile.each_byte{|ch| putc ch; putc ?.}
else
	puts "Unable to open file!"
end

#IO.readlines
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]

#IO.foreach method

IO.foreach("input.txt") { |block| puts block}

#renaming and deleting files

#rename a file from input.txt to input1.txt
File.rename("input.txt","input1.txt")

#delete file input.txt
File.delete("input.txt")

#file modes and ownership

file = File.new("input.txt","w")
file.chmod(0755)

#file inquires

File.open("Iterator.rb") if File::exist?("Iterator.rb")

