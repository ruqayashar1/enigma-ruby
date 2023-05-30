require 'active_record'

db_file=File.expand_path('./../DBS/enigma.db',__dir__)

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: db_file
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS another_db (
    id INTEGER PRIMARY KEY,
    name TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

class Student < ActiveRecord::Base
end