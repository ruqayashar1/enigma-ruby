
require_relative "./db.rb"

class Student
    attr_accessor :name,:email

    def initialize(name:,email:)
        @name = name
        @email = email
    end

    def self.create_table
        sql="
        CREATE TABLE IF NOT EXISTS students(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT UNIQUE
        )"
        connection.execute(sql)
    end

    def save
      sql="
        INSERT INTO students(name,email)
        VALUES(?,?)
      "
      connection.execute(sql,self.name,self.email)
    end

    def self.all_students
         sql="SELECT * FROM students"

         connection.execute(sql)
    end

end

student1=Student.new(name:"Samuel",email:"sam@sam.com")

p student1

student1.save