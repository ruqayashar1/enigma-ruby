4. Manual -->

-> Model <Pet>  <name , description , species>
-> View <index:Show all pets,(Read)> show One Pet(Read) , Edit a pet (Update) ,Post Pet(CREATE),  Delete Pet  (DELETE)

-> Controller <function to handle each view>



Rails naming convention -> 

model name:pet
class name:Pet -> Capitalize CamelCase
table name:pets

1:create our migration
rails generate migration create_pets 
create migration : rails db:migrate