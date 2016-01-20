
#ranges as Sequences
(1..5) # ==> 1,2,3,4,5
(1...5) # ==> 1,2,3,4
('a'..'d') #==> 'a','b','c','d'

$, = ", " # Array value separator
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# Asume a range
digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5}
puts "Rejected values are #{ret}"

digits.each do |digit|
	puts "In Loop #{digit}"
end

#ranges as conditions

score = 70
result = case score
    when 0..40 then "fail"
    when 41..60 then "pass"
    when 61..70 then "pass with Merit"
    when 71..100 then "pass with distinction"
    else "Invalid Score"
end

puts result

#ranges as intervals

if((1..10) === 5)
     puts "5 lies in (1..10)"
end

if(( 'a'..'j') === 'c')
	puts "c lies in ('a'..'j')"
end

if(('a'..'j') === 'z')
	puts "z lies in ('a'..'j')"
end

