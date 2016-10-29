
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
## require_relative allows you to insert a file that is relative to the file. 
#
#
require_relative 'state_data'

class VirusPredictor
 

# Initialize method makes variable assessible inside the class, sets variable inside the methods

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Running the predicted deaths method and using @population_density, @population, @state as its parimaters then it is calling the speed_of_spread method using the @population_density, @state as its parimaters  
  

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #This method requires population_density, population, and sate and it then predicts deaths. Based on the population_density is how you get the number of deaths wich is = @population * an integer and then it prints th e state and number of deaths

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end


  #if edge_case
    #handle edge_case
  #elsif pattern
    #do pattern logic
  #else
    #closing edge case (if any)
  #end
  
  # .1 * pop_density/50
  
  
  #This method takes in population_density and state as parimetrs and calcuates the rate od spread. It prints hows fast it will spread.


  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name,state_data|
  state = VirusPredictor.new(state_name,state_data[:population_density],state_data[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section