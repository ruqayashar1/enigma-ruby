# Connectio to db.
# Db engine <gem >


require "sqlite3"

# Open a db connection
# Open a database
$con = SQLite3::Database.new "X:/Moringa/Ruby/CatchUp_1_6-2-2023/DBS/catch.db"

# Create Table

# sql="CREATE TABLE students_2(
#  id INTEGER PRIMARY KEY,
#  name TEXT NOT NULL,
#  email TEXT NOT NULL)
#  "

#  con.execute(sql)

# Own ORM for the students.
class Student

    attr_accessor :name,:email

    def initialize(name,email)
        @name=name
        @email=email
    end

    def self.create_table
        sql="
         CREATE TABLE IF NOT EXISTS student(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT NOT NULL
         )
        "
        $con.execute(sql)
    end

    def save
        sql="
          INSERT INTO student(name,email) VALUES(?,?)
        "
        puts self.name
        puts self.email
        $con.execute(sql,self.name,self.email)
    end

    def self.all_students
     sql="SELECT * FROM student"
     $con.execute(sql)
    end
    
end

# # 

# # p Student.create_table

# p Student.all_students

# student1=Student.new("Amos","amos@gmail.com")
# student2=Student.new("Clinton","clinton@gmail.com")

# p student1
# p student2

# p student2.save

# p Student.all_students

for i in 1..100
    name="Student: #{i}-name"
    email="Student: #{i}-email"
    student=Student.new(name,email)
    student.save
    puts name
    puts email
end