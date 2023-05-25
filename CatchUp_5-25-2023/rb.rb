# Hash in Ruby is an Object in JS

# Why is it important. -> Hash diffucult.
# Code i want to classify the students i teach
# Case Sample three students. in this class.
# Amos(name,email,marks), Ann(name,email,marks), Charity(name,email,marks)
# c(functional language) -> c++(object oriented programming)

# # Variable required for me to work with the first student
# student1_name='Amos'
# student1_email='amos@example.com'
# student1_mark=60
# student1_gender='Male'

# # Variable required for me to work with the second student
# student2_name='Ann'
# student2_email='ann@example.com'
# student2_mark=10
# student2_gender='Female'


# # Variable required for me to work with the third student
# student3_name='Charity'
# student3_email='charity@example.com'
# student3_mark=30
# student3_gender='Female'

# # Code is difficult to maintain
# # Operations on the code is diffuclt

# def pass_or_fail(mark,name)
#     if mark >100
#         return 'Invalid Mark'
#     end
#     if mark>40
#         return "#{name} has passed"
#     end
#     return "#{name} has failed"
# end

# # passing multiple variables
# puts pass_or_fail(student1_mark,student1_name)
# puts pass_or_fail(student2_mark,student2_name)
# puts pass_or_fail(student3_mark,student3_name)

# student_1={
#     name:"Amos",
#     email:"amos@example.com",
#     mark:60,
#     pass_or_fail: ->(mark,name){
#         if mark >100
#             return 'Invalid Mark'
#         end
#         if mark>40
#             return "#{name} has passed"
#         end
#         return "#{name} has failed"
#      }
# }


# student_2={
#     name:"Ann",
#     email:"ann@example.com",
#     mark:10,
#     pass_or_fail:->(student){
#     if student[:mark] >100
#         return 'Invalid Mark'
#     end
#     if student[:mark]>40
#         return "#{student[:name]} has passed"
#     end
#     return "#{student[:name]} has failed"
#     }
#     # Function as a value
# }

# student_3={
#     name:"Ann",
#     email:"ann@example.com",
#     mark:10,
#     pass_or_fail:->(student){
#     if student[:mark] >100
#         return 'Invalid Mark'
#     end
#     if student[:mark]>40
#         return "#{student[:name]} has passed"
#     end
#     return "#{student[:name]} has failed"
#     }
#     # Function as a value
# }


## Class -> Template for an Object
## 

# def pass_or_fail2(student)
#     if student[:mark] >100
#         return 'Invalid Mark'
#     end
#     if student[:mark]>40
#         return "#{student[:name]} has passed"
#     end
#     return "#{student[:name]} has failed"
# end

# puts pass_or_fail2(student_1)

# puts pass_or_fail2(student_2)
# student_2[:mark]=45
# puts pass_or_fail2(student_2)

# puts student_1[:pass_or_fail].call(60,'Amos')
# puts student_2[:pass_or_fail].call
# student_2[:mark]=45
# student_2[:name]="Ann Mwangi"
# puts student_2[:pass_or_fail].call(student_1)
# student_2[:mark]=60
# puts student_2[:pass_or_fail].call(student_1)
# Method And what is a function
# method is a function inside a class or object


# product = {
#   name: "Widget",
#   price: 10.0,
#   quantity: 5,
#   total: -> { product[:price] * product[:quantity] }
# }

# total = product[:total].call
# puts "Total: $#{total}"

#class
# when you to use a virable or create a class
# Syntax @variable_name

# a constructor(js,c++,java) -> initalizer(ruby,python)
# a constructor or initalizer -> is a method that is called
#-> when a new instance of a class is created -> this is automatic


# attri_reader => Read a class variable
# attri_writer => Write a class variable
# attr_accessor => Combines both the read and write

class Person
    attr_accessor :name,:email
    def initialize(name="new Person",email="new@example.com")
        # puts"Person class initalized"
        @name = name
        @email = email
    end

    def say_my_name
        puts "My name is #{@name}"
    end

    def walk_status
        puts "Walk Status"
    end

end

class Student < Person
    #can define methods or even other class.

    def initialize(name,email,mark)
        super(name,email)
        @mark = mark
    end

    def walk_status
        super
        puts "Students hate walking"
    end

    def get_mark
        return @mark
    end

    def get_name
        return @name
    end

    def set_mark(mark)
        @mark=mark
    end

    def print_self
        print "160"
        p self # Reference an instance of the object.
    end


    def pass_or_fail()
            if @mark>100
                return 'Invalid Mark'
            end
            if @mark>40
                return "#{@name} has passed mark #{@mark}"
            end
            return "#{@name} has failed mark #{@mark}"
    end
end

class Employee < Person
    def initialize(name,email,salary)
        super(name,email)
        @salary=salary
    end

    def walk_status
        super
        puts "Employee Love walking"
    end
 
    def calculate_taxable_income
      return  0.16*@salary
    end
end


#use the person as a individual

emp1=Employee.new('Sam Mbugua','sam@gmail.com',50000)
student1=Student.new('Ann','ann@gmail.com',40)
# p emp1

 emp1.walk_status
 student1.walk_status

