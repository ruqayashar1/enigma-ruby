
require 'active_record'

db_file=File.expand_path('./../../DBS/enigma.db',__dir__)

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: db_file
)

def execute_student
    sql="CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name Text,
    email Text NOT NULL UNIQUE
)"

   puts "create student table"
  puts ActiveRecord::Base.connection.execute(sql)
end

execute_student()