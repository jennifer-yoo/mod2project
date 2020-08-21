class PetsController < ApplicationController
before_action :find_pet, only: [:show, :capture, :like]

    def index
        @pets = Pet.all
        if params[:search]
            @pets = Pet.search(params[:search])
        else
            @pets = Pet.all
        end
    end

    def show
    end

    def capture
        @watch_list = WatchList.create(user_id: @current_user.id, pet_id: @pet.id, note: "")
        flash[:my_errors] = "Write a note:"
        redirect_to edit_watch_list_path(@watch_list)
    end

    def like
        @pet.pet_likes
        redirect_to pet_path(@pet)
    end

    private

    def find_pet
        @pet = Pet.find(params[:id])
    end

    def pet_params
        params.require(:pet).permit(:animal, :breed, :age, :gender, :size, :img_url, :name, :description, :video_url, :status, :contact_email, :city, :state, :likes  )
    end
end
