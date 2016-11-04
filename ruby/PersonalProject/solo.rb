# RETAIL USER DATABASE
require "sqlite3"



# Create A Data base that will collect user information
SQLite3::Database.new ("retail.db")

# Create a table to store user information into Database
create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    user_name VARCHAR(255),
    )
SQL

# Ask for user Information



# Insert user Information Into Database




