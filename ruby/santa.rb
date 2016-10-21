class Santa 
	attr_reader :ethnicity
	attr_accessor :gender, :ethnicity, :age 
		def initialize(gender,ethnicity)
		 "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		@onedot = "sandwich"
		
	end
	
	
	def speak
	p "Ho, ho, ho! Haaaappy holidays!"
  	end

	def eat_milk_and_cookies(snickerdoodle)
	p "That was a good #{snickerdoodle}!" 
	end

	
	def celebrate_birthday
	 @age += 1
	end
	
	def get_mad_at(vixen)
			@reindeer_ranking.delete(vixen)
		   @reindeer_ranking<< vixen
	end
	
	def to_s
		"This santa is a #{@gender}, #{@ethnicity} by origin and #{@age} years old"
	end
	
	######---------------------------
	#create a getter method
	
	# def age
	# 	@age
	# end
	
	# def ethnicity
	# 	@ethnicity
	# end
	
	#####---------------------------
	# create a setter method that changes gender
	
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end
		
	
	
end






#create a santa class
#create santa instances
#create santa attribute

santas_array = []


example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ages = (0..140).to_a

example_genders.length.times do  
	instances = Santa.new(example_genders.sample,example_ethnicities.sample)
	santas_array << instances
	p instances.age
	p instances.celebrate_birthday
	instances.age = example_ages.sample
	puts instances
end