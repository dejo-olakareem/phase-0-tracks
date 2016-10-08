string="abc"
def encrypt(string)
	i=0
	while i < 1
	string1= string[0].next
	string2= string[1].next
	string3= string[2].next
	p string1 + string2 + string3
	i += 1
	end
end
p encrypt("abc")




def decrypt(string_to_be_decrypted)
	string = "abcdefghijklmnopqrstuvwxyz"
	string1 = string_to_be_decrypted[0] 
	equation = string.index(string1)-1
	string[equation]
	
	 string2 = string_to_be_decrypted[1]
	equation2 = string.index(string2)-1
	string[equation2]
	
	string3= string_to_be_decrypted[2]
	equation3 = string.index(string3)-1
	string[equation3]
	
	puts string4 = string[equation] +string[equation2]+ string[equation3]
end
puts decrypt("afe")