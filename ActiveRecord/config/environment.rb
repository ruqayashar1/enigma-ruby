require 'bundler'
 
Bundler.require


db_file=File.expand_path('./../../DBS/enigma.db',__dir__)

# Setup a db  Connection

ActiveRecord::Base.establish_connection(
    adapter:"sqlite3",
    database:db_file
)

def getActiveRecord
  return ActiveRecord
end




