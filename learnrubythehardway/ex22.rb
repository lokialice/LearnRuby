puts "Let's practice everything"
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

# the <<END is a "heredoc". See the student Questions.
poem = <<END
\tThe lovely world
with logic so firmly planted cannot discern \n the needs of love
nor comprehend passtion from intuition
and requires an explanation
\n\t\twhere there is none
END

puts "------------"
puts poem
puts "------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates		
end

start_points = 10000
beans, jars, crates = secret_formula(start_points)

puts "With a staring points of: #{start_points}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_points = start_points / 10
puts "We can also do that this way: "
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_points)