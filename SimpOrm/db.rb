require 'sqlite3'


def connection 
    db_file=File.expand_path('./../DBS/enigma.db',__dir__)
    return db=SQLite3::Database.new(db_file)
end

sql="SELECT * FROM STUDENTS"

puts connection.execute(sql)

