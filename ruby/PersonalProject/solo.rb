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


# Ask for user Information
# USER INTERFACE
puts "Welcome to Wally's Super store"
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



username = db.execute("SELECT users.name FROM users").first
db.execute("SELECT * from users where name = '#{name}' ") do |row|
	puts "This is your  name #{row['name']} and your email is #{row['email']} the username you generated was #{row['user_name']}."
end




# Insert user Information Into Database




