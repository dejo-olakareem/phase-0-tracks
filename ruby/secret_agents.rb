# 





p "Would you like to encrypt or decrypt a password?"
respond = gets.chomp



p "What is the password?"
password = gets.chomp


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