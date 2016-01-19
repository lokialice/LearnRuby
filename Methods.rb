def test(a1="Ruby", a2="Perl")
	puts "The programing language is #{a1}"
	puts "The programing language is #{a2}"
end
test "C","C++"
test

#Ruby return statement

def test1
	j = 100
	k = 200
	i = 300
	return i,j,k
end
var = test1
puts var

#Variable number of parameter

def sample(*t)
	puts "The programing of parameter is #{t.length}"
	for i in 0...t.length
		puts "The parameter are #{t[i]}"
	end
end
sample "Zara","6","F"
sample "Mac", "36", "M","MCA"

#Class methods
#Ruby alias statement

alias method_name
alias global_variable_name

#Ruby undef statement

undef method_name