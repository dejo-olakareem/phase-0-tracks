# def tryout
#  puts "Enter tryout"
#  yield("chris","oladejo")
#    puts "Exit tryout"
# end

# tryout { |pair1, pair2| puts "#{pair1} and #{pair2} are pairing on challenge Ex53."}




sf_team = ["giants","Niners","warriors","A's"]

team_stadium = {:giants=>"at&t park",
:Niners=>"levis",
:warriors=>"oracle",
:As=>"colesium"}


#Solving Solution 1
#Each

puts sf_team

sf_team.each do |tiny|
	puts "this is #{tiny} palace"

end


puts sf_team



#MAP

change = sf_team.map do |tiny|
	puts "this is #{tiny} palace"
	"this is #{tiny} palace"
end

p sf_team
p change

p "After .map"



sf_team.map! do |tiny|
	puts "this is #{tiny} palace"
	"this is #{tiny} palace"
end

p "After .map!"
p sf_team



#iterate through hash



p team_stadium

team_stadium.each do |team, stadium|
	puts "the #{team} plays at this #{stadium}"

end


p team_stadium




#RELEASE 2 -- USE THE DOCUMENTATION




#1. DELETE_IF
sf_team = ["giants","Niners","warriors","A's"]
team_stadium = {:giants=>"at&t park",
:Niners=>"levis",
:warriors=>"oracle",
:As=>"colesium"}

#1 - for array
p sf_team
p sf_team.delete_if {|team| team.length > 7}

# #1 - for hashes
p team_stadium  
p team_stadium.delete_if {|team,stadium| stadium.length > 5}

#2 - for array
  p sf_team
  p sf_team.select! {|team| team[0].downcase =="w"}


# #2 - for hashes
 p team_stadium  
 p team_stadium.select {|team,stadium| stadium[0..2].downcase == "lev"}

# #3 - for array
   p sf_team
   p sf_team.keep_if {|team| team[1].downcase =="i"}

   
# # #3 - for hashes

  p team_stadium  
  p team_stadium.keep_if {|team,stadium| team[1].downcase =="i"}


#4 - for array
 p sf_team
  p sf_team.take_while {|team| team.length <7}
#4 - for hashes





