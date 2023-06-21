# Rails -> Rails WebFramework written in Ruby

# React -> Front-end JS Framework Written in JS

# Programming Language -> js - ruby

# Framework(library) Depends on the programming (base)

# MVC Architechure ->(Model View Controller)

# Client Side Rendering(React) And Server Side Rendered (Rails Server side rendered Applications)

# Hybrid Application(Next JS)

# PHP(Server Side Rendered)

# Django, Flask (Server Side )

# Create A Rails APP.

(sqlite,ruby)
-> install the rails gem

gem install rails
-> rails new <aplication_name>

-> Hello World -> Render raw html.

-> Home Page And About us Page.

-> To make a multi page application using view

1. Tell rails to generate a controller with the name you want.
   rails generate controller <NAME>

2. Manula Controller

3. Scaffolding Automated Way

Make a pet application that enables peaople to add their pets.
Addoption.

-> is code generation feature in ruby on rails.
-> it helps you create the basic sturcture of a model,ViewAnd controlles.
-> it automatest he generation of repetivire (CRUD) operations.

rails generate scaffold <name> <resource values>

4. Manual -->

-> Model <Pet>  <name , description , species>
-> View <index:Show all pets,(Read)> show One Pet(Read) , Edit a pet (Update) ,Post Pet(CREATE),  Delete Pet  (DELETE)

-> Controller <function to handle each view>



Rails naming convention -> 

model name:pet
class name:Pet -> Capitalize CamelCase
table name:pets

1:create our migration