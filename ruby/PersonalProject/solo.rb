# RETAIL USER DATABASE
require "sqlite3"



# Create A Data base that will collect user information
db = SQLite3::Database.new ("retail.db")

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
# Ask for user Information
puts "Welcome to Wally's Super store"
puts "We will like to gather your Info for Purchase"
puts "What is your full name?,First name Last name"

name1 = gets.chomp.split(" ")

name1.map! do|i|
 i.capitalize
end

p name = name1.join(" ")

puts "What is your email"

p email = gets.chomp

puts "choice of user name"
p user_name = gets.chomp



# Insert user Information Into Database




