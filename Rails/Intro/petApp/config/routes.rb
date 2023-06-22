Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pet#index"

  get "/add",to: "pet#add"

  get "/delete/:id", to:"pet#delete_pet"

  get "/update/:id",to: "pet#update"

  put "/update/:id", to:"pet#update_pet"

  post "/add",to:"pet#add_pet"


  #example quer post "/click me" to:"fdsdfsd"

end
