$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

#ruby while modifier

$j = 0
$number = 8

begin
	puts("Inside the loop j = #$j")
	$j += 1
end while $j < $number

#ruby until statement

$k = 0
$n = 5

until $k > $n  do
   puts("Inside the loop k = #$k" )
   $k +=1;
end

#ruby until modifier

$c = 0
$s = 6

begin
	puts("Inside the loop c = #$c")
	$c +=1
end until $c > $s

#ruby for statement

for z in 0..5
   puts "Value of local variable is #{z}"
end

#OR

(0..8).each do |v|
	puts "Value of local variable is #{v}"
end

#ruby break statement

for m in 0..7
	if m > 2 then
		break
	end
	puts "Value of local variable break is #{m}"
end

#ruby next statement

for n in 0..8
	if n < 2 then
		next
	end
	puts "Value of next local variable is #{n}"
end

#ruby redo statement

for w in 0..7
	if w < 2 then
		puts "Value of redo is #{w}"
		redo
	end
end

#ruby retry statement
=begin
for i in 1..5
   retry if  i > 2
   puts "Value of local variable is #{i}"
end
=end