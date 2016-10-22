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