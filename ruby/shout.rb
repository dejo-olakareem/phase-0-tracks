# module Shout
#  def self.yell_angrily(words)
#     words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#  	words + "!!!" + ":)"
#  end

# end





# Shout.yell_angrily("screwyou")
# Shout.yell_happily("Nice to meet you")

module Shout
	def brag(words)
	  puts "#{words} is really making me upset !!!!"
	end
end



class Destroy
	include Shout
end


class Anger
	include Shout
end


beat = Destroy.new
beat.brag("wale")
fire = Anger.new
fire.brag("taryn")