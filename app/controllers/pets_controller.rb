class PetsController < ApplicationController

    def index
        @pets = Pet.all
        if params[:search]
            @pets = Pet.search(params[:search])
        else
            @pets = Pet.all
        end
    end

    def show
        @pet = Pet.find(params[:id])
    end

    def like
        @pet = Pet.find(params[:id])
        @pet.pet_likes
        redirect_to pet_path(@pet)
    end

    private

    def pet_params
        params.require(:pet).permit(:animal, :breed, :age, :gender, :size, :img_url, :name, :description, :video_url, :status, :contact_email, :city, :state, :likes  )
    end
end
