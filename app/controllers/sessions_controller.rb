class SessionsController < ApplicationController

    def logout
        session.delete(:user_id)
        redirect_to pets_path
    end

    def new
    end

    def login
        @user = User.find_by(email: params[:session][:email])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            redirect_to pets_path
        else
            flash[:error] = "Username or Password is Incorrect"
            redirect_to new_login_path
        end
    end
end