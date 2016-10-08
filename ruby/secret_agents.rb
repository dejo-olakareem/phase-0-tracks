# Ask user for function



p "Would you like to encrypt or decrypt a password?"
respond = gets.chomp

# Ask user for password

p "What is the password?"
password = gets.chomp


# Activate users response for encrypt
# let's use .length to loop 
# through the word
# Enter condition so space character remains a space character
# Enter condition statement for edge case
# Gather data with encrypted_word
# Return string

if respond  == "encrypt"
	def encrypt(string)
		i=0
		encrypted_word = ""
		while i < string.length
		string1= string[i].next
		i +=1
	
			if string1 == "aa"
				string1 = "a"
				elsif string1 == "!"
				string1 = " "
				
			end
			encrypted_word += string1
		end
		return encrypted_word
	end
	p encrypt(password)
 	
# Activate users response for decrypt
# let's use .length to loop 
# through the word
# Gather data with encrypted_word
# Return string





elsif respond == "decrypt"
	
	def decrypt(string_to_be_decrypted)
		i= 0
		decrypted_word=""
		while i < string_to_be_decrypted.length
			string = "abcdefhgijklmnopqrstuvwxyz"
			string1 = string_to_be_decrypted[i]
			equation_index = string.index(string1)-1
			decrypted_word += string[equation_index]
			i +=1
		end
		return decrypted_word
	end
	p decrypt(password)
end	
	
 #decrypt(encrypt("swordfish"))