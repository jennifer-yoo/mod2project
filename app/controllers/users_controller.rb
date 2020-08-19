class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @watch_lists = WatchList.all
    end

end
