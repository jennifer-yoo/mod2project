class WatchListsController < ApplicationController
    def new
        @watch_list = WatchList.new
    end

    def create
        @watch_list = WatchList.create(watch_list_params)
        #redirect_to SOMETHING_PATH
    end

    def edit
        @watch_list = WatchList.find(params[:id])
    end

    def update
        @watch_list = WatchList.find(params[:id])
        @watch_list.update(watch_list_params)
        #redirect_to SOMETHING_path
    end

    private

    def watch_list_params
        params.require(:watchlist).permit(:user_id, :pet_id, :note)
    end
end
