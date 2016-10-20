# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

#  define method
#  Have a list of items
#  Give method a parameter
#  Print list of items
#  split list if item into an array
#  Iterate over each item and push into hash
#  attach quantity to items
 
 
 def grocery(grocery_list)
 	hash = {}
 	 list_item = grocery_list.split(" ")
 	 list_item.each {|x| hash[x] = 2}
   return hash 
 end 
 
 fruit = grocery("banna grape bean orange")


# Method to add an item to a list
# input: item name and optional quantity and list 
# steps: add to the list of the item and quantity 
		# item will be key and quantity will be value 
# output: hash will be output

def add_item(item,quantity,list)
	list[item] = quantity
end

add_item("apple",2,fruit)


# Method to remove an item from the list
# input: hash, item to delete, 
# steps: delete item from list
# output: all of remaining item


def delete(item, list)
	list.delete(item)
end

delete("banna",fruit)


# Method to update the quantity of an item
# input: hash, quantity to add
# steps: add quantity to item
# output: updated list

def update(item,quantity,list)
	list[item] = quantity
end

update("grape",19,fruit)



# Method to print a list and make it look pretty
# input: hash to be printed
# steps: add hash parameter to method
# output: hash


def print(list)
	puts list
end

print(fruit)

# What did you learn about pseudocode from working on this challenge?
# pseudocode is a challenging writing it before writing the code but my guide said it is better to practice it
# What are the tradeoffs of using arrays and hashes for this challenge?
# using hashes was challenging but my guide made me know why using the ruby doc is good
# What does a method return?

# What kind of things can you pass into methods as arguments?
# any data can be passed as an argumenet
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?



