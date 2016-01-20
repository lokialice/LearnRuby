'This is a simple Ruby string literal'

'Won\'t you read O\'Reilly\'s book?'

#expression substitution

x,y,z = 12,36,72
puts "The value of x is #{x}"
puts "The sum of x and y #{x + y}"
puts "The avarage was #{(x + y + z)/3}"

#general delimited strings

%{Ruby is fun.} equivalent to "Ruby is fun."
%Q{ Ruby is fun. } equivalent to "Ruby is fun."
%q[Ruby is fun.] equivalent to a single-quoted string
%x!ls! equivalent to back tick command output 'ls'

