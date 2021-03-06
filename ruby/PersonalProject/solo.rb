# RETAIL USER DATABASE
require "sqlite3"



# Create A Data base that will collect user information
db = SQLite3::Database.new ("retail.db")
db.results_as_hash = true

# Create a table to store user information into Database
create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    user_name VARCHAR(255)
    )
SQL

db.execute(create_table_cmd)

# LOGIC
def create_user(db,name, email,user_name)
  db.execute("INSERT INTO users (name, email,user_name) VALUES (?, ?, ?)", [name, email,user_name])
end

def all_info_dab(db)	
	 ans = db.execute("SELECT * FROM users")

	 ans.each do |user|
	 			puts "#{user['name']} wants this#{user['user_name']} as user name."
	 		end
end

def specific_user(db,userid)
	username = db.execute("SELECT users.name FROM users").first
	db.execute("SELECT * from users where id = #{userid} ") do |row|
		puts "Your name is #{row['name']} and your email is #{row['email']} the username you generated was #{row['user_name']}.
		Keep your id number,which is #{row['id']}. You can use it to update you information in the future."
	end
end

def updatename(db,updatedname,idprovided)
	db.execute("UPDATE users SET name = '#{updatedname}' where id= '#{idprovided}' ")
end

def updateemail(db,updatedemail,idprovided)
	db.execute("UPDATE users SET email = '#{updatedemail}' where id= '#{idprovided}' ")
end

def updateusername(db,updateduser_name,idprovided)
	db.execute("UPDATE users SET user_name = '#{updateduser_name}' where id= '#{idprovided}' ")
end

def del_acct(db,userid)
	db.execute("DELETE FROM users WHERE id =  #{userid}")
end


def update(db,userid)
	# specific_user(db,userid)
	puts "what is your id?"
		idprovided = gets.chomp.to_i
	p "Which will you like to change? name,email or username"
	veri_ans = gets.chomp
	if veri_ans == "name"
 		puts "What will you like to update it to"
 		name1 = gets.chomp.split(" ")
		name1.map! do|i|
		 i.capitalize
		end
		updatedname = name1.join(" ")
		updatename(db,updatedname,idprovided)
 	elsif veri_ans == "email" 
 		puts "What email will you like to update to"
 		updatedemail = gets.chomp
 		updateemail(db,updatedemail,idprovided)
 	elsif veri_ans == "username"
 		puts "What will be your user name"
 		updateuser_name = gets.chomp
 		updateusername(db,updateuser_name,idprovided)
end
	
end


def new_member(db,userid)
	valid_input = false
	until valid_input == true 
	specific_user(db,userid)
		puts " Is this correct Y/N"
		spec_ans = gets.chomp.upcase
		if spec_ans =="Y"
			valid_input = true
			puts "Thanks for your registration"
			elsif spec_ans == "N"
				update(db,userid)
			else puts "I do not understand you!!!"
		end
	end
end








# Ask for user Information
# USER INTERFACE
puts "Welcome to Wally's Super store"

valid_input =false
until valid_input == true

	puts "Are you a new member or current member?"
	member = gets.chomp

	if member == "new" 
		valid_input = true
		puts "We will like to gather your Info for Purchase"
		puts "What is your full name?,First name Last name"

		name1 = gets.chomp.split(" ")

		name1.map! do|i|
		 i.capitalize
		end  

		name = name1.join(" ")

		puts "What is your email"

		email = gets.chomp

		puts "choice of user name"
		user_name = gets.chomp




		create_user(db,name,email,user_name)
		userid = (db.execute("SELECT * FROM users Where name = '#{name}' ")).first['id']
		# puts userid
		new_member(db,userid)
		elsif member == "current"
		valid_input = true
		puts "What is your userid"
		userid = gets.chomp.to_i
		specific_user(db,userid)
		puts "Will you like to update or Delete your account"
		 resp = gets.chomp
		 if resp == "update"
		 	loop do
			 	update(db,userid)
			 	specific_user(db,userid)
			 	puts "Is this update correct Y/N"
			 	break if gets.chomp.upcase == "Y"
			end
		 elsif resp == "delete"
		 	del_acct(db,userid)
		 	puts "We appreciate your business"
		 end
		else puts "Just confirming are you a new or current member. TYPE new or current"
	end
end


# Insert user Information Into Database




