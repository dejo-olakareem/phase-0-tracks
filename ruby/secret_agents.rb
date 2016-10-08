# 





p "Would you like to encrypt or decrypt a password?"
respond = gets.chomp



p "What is the password?"
password = gets.chomp


if respond  == "encrypt"
	def encrypt(string)
		i=0
		while i < string.length
		string1= string[i].next
		i +=1
	
			if string1 == "aa"
				string1 = "a"
			end
			p string1
		end
	end
	p encrypt(password)
 	

elsif respond == "decrypt"
	
	def decrypt(string_to_be_decrypted)
		i= 0
		while i < string_to_be_decrypted.length
		string = "abcdefhgijklmnopqrstuvwxyz"
		string1 = string_to_be_decrypted[i]
		equation_index = string.index(string1)-1
		p answer= string[equation_index]
		i +=1
		end
	end
	p decrypt(password)
end	
	
 decrypt(encrypt("swordfish"))