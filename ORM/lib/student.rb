

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
        DB[:conn].execute(sql)
    end

    def save
      sql="
        INSERT INTO students(name,email)
        VALUES(?,?)
      "
      DB[:conn].execute(sql,self.name,self.email)
    end

    def self.all_students
         sql="SELECT * FROM students"

         DB[:conn].execute(sql)
    end

end