class PetController < ApplicationController

    def index
      @pets= Pet.all
      p @pets
      render html:"All Pets"
    end

end
