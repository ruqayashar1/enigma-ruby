Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # root "application#hello"
  
  # # get "", to:"application#hello"

  # get "about", to:"application#about"


  root "pages#home"
  
  # get "", to:"application#hello"

  get "about", to:"pages#about"

  get "another", to:"another#page1"

  
end
