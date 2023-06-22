class PetController < ApplicationController


  # An instance of the controller class
  # Can be directly accessed by the view

    def index
      @pets= Pet.all
      # p @pets
      # render html:"All Pets"
      render "index"
    end

    def add
      render "add"
    end

    def add_pet
      #Form Data
      # params
      puts params
      name=params[:name]
      classification=params[:classification]
      description=params[:description]

      puts description

      p=Pet.create(name: name, classification: classification, description: description)
      
     #redirect_to :controller => 'article', :action => 'index'
      redirect_to action:'index'
    end

    def delete_pet
      puts params
      id=params[:id]

      pet=Pet.find(id.to_i)
      pet.destroy
      # render plain: "pet id=#{id} and the pet is #{pet}"
      redirect_to action:'index'
    end

    def update
      puts params
      id=params[:id]

      @pet=Pet.find(id.to_i)
      render "update"
    end 

    def update_pet
      puts params
      id=params[:id]

      name=params[:name]
      classification=params[:classification]
      description=params[:description]

      pet=Pet.find(id.to_i)
      pet.update(name: name, classification: classification, description: description)
      redirect_to action:'index'
    end

end
