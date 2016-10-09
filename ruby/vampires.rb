p "how many employess are we processing"
emp = gets.chomp


i=0
until i == emp.to_i
 
 
	p "what is your name"
	string1 = gets.chomp
	p "how old are you?"
	age = gets.chomp
	p "what year were you born"
	year = gets.chomp
	p "our company cafeteria serves garlic bread.should we order some for you?"
	order = gets.chomp
	p " Would you like to enroll in the companys health insurance?"
	insurance = gets.chomp 
	
	valid_input = false
	
	until valid_input
	
		p "what type of allerge do you have? after you finished  type done"
		allergies = gets.chomp
		
		
		if allergies == "sunshine"
			allergies = true
			valid_input = true 
			
			elsif allergies == "done"
			p "great you meet our allerge expectation"
			valid_input = true  
			allergies = false 
			
			else puts "name another allerge"
		end
	end
	
	if  2016 - year.to_i == age.to_i 
		 age = true
		elsif 2016 - year.to_i != age.to_i
		 age = false
	end
	
	if  order == "y"
		 order = true
		elsif order == "n"
		 order= false
	end
	
	if insurance == "y"
		 insurance = true
		elsif insurance == "n"
		 insurance = false
	end
	
	if  string1 == "drake cula"
		answer = "definitely a vampire"
		elsif string1 == "tu fang"
		answer = "definitely a vampire"
		elsif allergies
		answer =" allergy probably a vampire"
		elsif age && (order || insurance)
	 	answer = "probably not a vampire"
	 	elsif (age && order) != insurance  
	 	answer = "probably a vampire"
	 	elsif  !(order && insurance && age)
	 	answer = "almost certain a vampire"
	    else  answer = "response Inconclusive"
	end
	 
	p answer
	

 
 i += 1
end
 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
