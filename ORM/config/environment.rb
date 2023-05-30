require 'bundler'

Bundler.require

db_file=File.expand_path('./../../DBS/enigma.db',__dir__)


## "X:/Moringa/Ruby/DBS/enigma.db", absule path
require_relative "./../lib/student"

DB={conn:SQLite3::Database.new(db_file)}