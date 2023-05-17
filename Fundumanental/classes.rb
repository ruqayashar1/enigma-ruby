# JS --> Functional Programming languages.
# C Functional Programming languages.
# Ruby is Very Objective Programming Language

# Class Defination
#JS class MyClass{
  #code for class goes here
#}

# class MyClass
   
#     def initialize
#         puts "MyClass initialization"
#         @name = "MyClass"
#     end

#     def get_name
#         return @name
#     end

#     def set_name(new_name)
#         @name = new_name
#     end

# end

# Class instance variables.
# 

# k=MyClass.new()

# k.set_name("Fo Fo Fo")
# puts k.get_name

# Acces Control in classes
# Control the acces and visibility of methods within a class

#public Access methods.


#private 
# The method can only be accessed within a class
# class MyClass2
    
#     def initialize
#         @name="My Class 2"
#     end

#     def get_name_public
#         return self.get_name
#     end

#     private
#     def get_name
#         puts @name
#     end

# end

# m=MyClass2.new


# # protected Access. Not accessible outside the class hirachy
# # Acces itseld,its subclasses 


# puts m.get_name


# class Animal
#    def eat
#     puts "Eating"
#    end
# end

# class Dog<Animal 
#  def bark
#     puts "Dog Woof !"
#  end
# end

# dog =Dog.new

# dog.eat
# dog.bark

