class Computer
	# attr_accessor :word, :guess_word 
	
	def initialize 
		@word 
		@guess_word 
		@count = 1
		@blanks_array = []
	end 
	
	

	def break_even
		@word = "hello"
		@guess_word = "ol"
		@word= @word.split("") 
	    @guess_word = @guess_word.split("")
	    matched_letters = @word & @guess_word
	    
	    @word.each_with_index{|letter,index|
	      if matched_letters.include?(letter)
	        @blanks_array[index] = letter
	      end
	    }
    
    return @blanks_array.join(" ")
    


  	end 
	
	def method_guesser
	    @blanks_array = (" _ " * @word.length).split
	 
	    until @count >= @word.length 
	      	if @word == @guess_word
	        p "Congratulation you won"
	        
	      	else
	      	 p break_even
	        p "keep trying? guess again"
	        @guess_word = gets.chomp
	        
	      	end
	    
      	@count += 1 
    	end
  	end
    
end    		
		
# User interface

# instance = Computer.new



# p "What is the word?"
# instance.word = gets.chomp 

# p "what is your guess?"
# instance.guess_word = gets.chomp 
# p instance.break_even
#  p instance.method_guesser