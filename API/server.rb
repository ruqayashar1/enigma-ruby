require 'sinatra'

require "sinatra/activerecord"

require "sinatra/cors"


set :database, {adapter: "sqlite3", database: "app.sqlite3"}

set :allow_origin, "*"
set :allow_methods, "GET,HEAD,POST"
set :allow_headers, "content-type,if-modified-since"
set :expose_headers, "location,link"


clothes=[
    "https://static.euronews.com/articles/stories/06/48/94/10/773x435_cmsv2_72145961-5fb7-5e54-852d-997299cf9e10-6489410.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvPgUfl1gimBey4QdQzWr20Qe05w67b2bHZXQRzekWcBuwZstwXEo5sfuSS03-wO6SXTo&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgJ4saaLV_rd8yLn4zbYsccHI1iiUT2LdrUw&usqp=CAU"
]

# CREATE READ UPDATE DELETE

class Student<ActiveRecord::Base
end

# GET Request to get all students
get '/'do
content_type :json
 #ref code users = User.all
 return Student.all.to_json
end


#sets random images.

put '/update-all-images' do
    students=Student.all

    content_type :json

    students.each do |student|
         random_int=rand(0..2)
         puts random_int
   
         one_student=Student.find(student[:id])
         one_student.update(email:clothes[random_int])
       
    end
    
    return Student.all.to_json
end

#POST Request
post '/' do
    request.body.rewind # Ensure the request body is at the beginning
    content_type :json
    #Parse Json Data

    json_data=JSON.parse(request.body.read)
 
    #Access the json data properties

    # ref code:user = User.create(name: "David", occupation: "Code Artist")
    
    name=json_data["name"]
    email=json_data["email"]

    student=Student.create(name: name, email: email)

    return student.to_json
 end