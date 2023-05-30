require 'sinatra'
require 'json'

# Static Web Application
# Dynamic Web Application

#public directory

set :public_folder, File.dirname(__FILE__)+'/static'

#DOwnlonload file

#property 

students=[{
    name:"Christine",
    email:"christine@gmail.com",
    age:20,
},
{
    name:"Emmanuel",
    email:"emmanuel@gmail.com",
    age:30,
},
{
    name:"Samuel Sam",
    email:"sam@gmail.com",
    age:30,
}]


get '/' do
    content_type :json # Sets the content type json
    data=students

    status 200
    return data.to_json # Serializes the data to Json
end

#Url query and paramaters
#Dynamic url
get '/:name' do
  name=params[:name]
  content_type :json
  
  students.each do |student|
     if name.downcase==student[:name].downcase
        status 200
        return student.to_json
     end
   end


  status 400
  return {message:"Student not found"}.to_json
  
end

get '/search/student' do
    puts params
    "Search Query Done"
end

post '/' do
   request.body.rewind # Ensure the request body is at the beginning
   content_type :json
   #Parse Json Data
   json_data=JSON.parse(request.body.read)

   #Access the json data properties

   name=json_data["name"]
   email=json_data["email"]
   age=json_data["age"]
   
    doc={name:name,email:email,age:age}

    students<<doc
    status 201
    return students.to_json
end



# get '/' do
#     # status 400
#     # 'Hello world!'
#     redirect '/index.html'
# end


# get '/about' do
#     # status 400
#     # 'Hello world!'
#     redirect '/about.html'
# end

# get '/download' do
#    file_path=File.expand_path('./static/fallout-vault-boy-green-tv-classic-fb0azp74pwiha5l6.jfif',__dir__)
#    if File.exist?(file_path)
#       send_file file_path
#    else
#     status 404
#     "File not found"
#    end
# end
