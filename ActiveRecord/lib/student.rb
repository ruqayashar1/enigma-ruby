require 'active_record'

db_file=File.expand_path('./../../DBS/enigma.db',__dir__)

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: db_file
)

class Student <ActiveRecord::Base

end

