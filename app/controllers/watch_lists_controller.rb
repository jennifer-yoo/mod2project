class WatchListsController < ApplicationController
    def new
        @watch_list = WatchList.new
        @users = User.all
        @pets = Pet.all
    end

    def create
        @watch_list = WatchList.create(watch_list_params)
        redirect_to user_path(@watch_list.user)
    end

    def edit
        @watch_list = WatchList.find(params[:id])
    end

    def show
        @watch_list = WatchList.find(params[:id])
    end

    def update
        @watch_list = WatchList.find(params[:id])
        @watch_list.update(watch_list_params)
        redirect_to user_path(@watch_list.user_id)
    end

    def destroy
        @watch_list = WatchList.find(params[:id])
        @watch_list.destroy
        redirect_to user_path(@watch_list.user)
    end

    private

    def watch_list_params
        params.require(:watch_list).permit(:user_id, :pet_id, :note)
    end
end
