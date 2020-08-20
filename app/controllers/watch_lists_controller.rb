class WatchListsController < ApplicationController
before_action :find_list, only: [:edit, :show, :update, :destroy ]

    def new
        @watch_list = WatchList.new
        @users = User.all
        @pets = Pet.all
    end

    def create
        @watch_list = WatchList.create(watch_list_params)
        redirect_to user_path(@current_user)
    end

    def edit
    end

    def show
    end

    def update
        @watch_list.update(watch_list_params)
        redirect_to user_path(@watch_list.user_id)
    end

    def destroy
        @watch_list.destroy
        redirect_to user_path(@watch_list.user)
    end

    private

    def find_list
        @watch_list = WatchList.find(params[:id])
    end

    def watch_list_params
        params.require(:watch_list).permit(:user_id, :pet_id, :note)
    end
end
