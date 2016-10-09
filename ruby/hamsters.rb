p "what is your hamsters name"
name=gets.chomp
p "what is the color"
color=gets.chomp
p "what is your hamster noise level between 1-10"
level=gets.chomp
p "is your hamster a good candidate for adoption ?(y/n)"
adoption=gets.chomp
 
p "what is your hamsters age?"
age=gets.chomp
 
	if age.empty?
	   age = NIL
	end

	if adoption == "y"
		adoption = " This hamster is adoptable"
		elsif adoption == "n"
		adoption = "This hamster is not adoptable"
	else adoption = "answer this question with a y or no"
	end


	
puts "Your Hamster is #{age.to_i} years old"

puts "Wow it has a #{level.to_i} noise level"

puts " This Hamster is named #{name.upcase!}"

puts " This Hamster as a #{color} fur color"

puts adoption