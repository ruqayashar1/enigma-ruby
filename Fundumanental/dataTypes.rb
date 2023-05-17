# # Everything in ruby is an object

# # string
# # js let k="Hello world"

# #ruby
# k="Hello World"
# print(k)
# # String Methods.
# #JS k.toUpperCase()

# # p(k.upcase())


# # js typeof variable_name
# p ""
# p k.class
# m=23
# p m.class

# # methods that a particular variable has.

# p ""
# #print k.methods # string methods

# puts k.methods

# Numbers in Ruby

# var_name=234

# methods,class

#nill is same as null

#Boolean #true or false

# puts true.class
# puts true.methods

#arrays in js let myarray=[]

# myarray=[1,2,3,"hello world"]

# # puts myarray

# #Objects Hashes
# # js let obj={key1:value,key2:value}

# my_hash={key1:"Hello World",key2:123}


# # obj[string]
# # obj.fdsfs
# puts  my_hash
# puts my_hash[:key1] # ruby 


#functions in ruby

# function greet(name="hello World"){
#     //code goise here
#     console.log(name)
# }

# def greet(name="Something else")
#     puts(name)
#     #return null
#     return nil
# end

# # calling a function
# # greet("Hi Arthur")

# puts greet("Hello World")

# puts greet()

# p greet()

# Comparision Operators

# Equlity operator ==  js ===

# puts 23==23
# puts 23=='23' #=== in js it false #== true.

# greater than And less Than > ,< >= ,<= !=


#Logical Operators
# if,else,elsif 

# def check_age(age)
#    if age<18
#     return 'You are underage'
#    elsif age>=18 && age<50
#     return "You can drink"
#    else 
#     return 'You are too old to drink'
#    end
# end


# def check_age2(age)
#     case age
#     when 20
#         return 'You are 20 years'    
#     when 0..17
#         return 'You are underage'
#     when 17..64
#         return "You can drink"
#     else
#         return 'You are too old to drink'
#     end
# end

# range_a=0..17 #inclusive range
# range_b=1...10 #exlusive

# puts  range_a.to_a


# puts check_age2(12)
# puts check_age2(20)
# puts check_age2(17.5)

# puts check_age(55)

# Classes.


#loops tommorow.

## Loop 

#For loop

#js for let i=0;i<10;i++{}

# for i in 0..10 do
#    puts "The value is #{i}"
# end

# js for let i=0;i<numbers.length;i++

# numbers=[23,45,67,89,67]

# Each Loop

# numbers.each do |number|
#     puts "The value is  the number #{number}"
# end

# numbers.each_with_index do |number, index|
#     puts "The index is #{index} the number #{number}"
# end

# numbers=[23,45,67,89,67]
# for i in 0..numbers.length-1 do
#    puts "The value is #{i}, the number #{numbers[i]}"
# end

#while loop

# while(conditial){

# }

# counter=0

# while counter<10 do
#     puts counter
#     counter=counter+1
# end

# Times loop

# 10.times do |i|
#     puts i
# end
