class PetsController < ApplicationController

    def index
        @pets = Pet.search(params:[:query])
        render 'index'
    end

    def show
        @pet = Pet.find(params[:id])
    end

end
