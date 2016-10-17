original_name = []
fake_name = []

valid_input = false
until valid_input	 
	p " what is your full name?"
	full_name = gets.chomp.downcase
	
	if full_name == "quit"
			valid_input = true  
			p "Done"

	

	else 
		original_name.push full_name.capitalize
		alpha = full_name.split("")
		bravo=""
		# "Felicia Torres" will become "Vussit Gimodoe"
		i = 0
		
		while i < alpha.length
			if alpha[i] == "a"
				alpha[i] ="e"
				elsif alpha[i] == "e"
				alpha[i] = "i"
				elsif alpha[i] == "i"
				alpha[i] = "o"
				elsif alpha[i] == "o"
				alpha[i] = "u" 
				elsif alpha[i] == "u"
				alpha[i] = "a"
				elsif alpha[i] == " "
				alpha[i] = "!"
				elsif alpha[i] == "z"
				alpha[i] = "b"
				else 
					string = "bcdfghjklmnpqrstvwxyz"
					string1 = alpha[i]
					equation_index = string.index(string1)+1 
				    alpha[i] = string[equation_index]
					
			end
			bravo += alpha[i]
			 
			i += 1 
		end
			 
			 charle = bravo.split("!")
			   delta = charle.rotate
			   echo = delta.join(" ")
			  p foxtrot = echo.capitalize
			 fake_name.push foxtrot 
			  
	end 	
end  	  
		 
 final_answer = {
	realname: original_name,
	fakename: fake_name

}

p final_answer[:fakename]