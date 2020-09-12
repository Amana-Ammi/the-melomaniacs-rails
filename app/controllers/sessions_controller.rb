class SessionsController < ApplicationController
    
    def new
    end
 
    def create
       @user = User.find_by(email: params[:user][:email])
       if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
       else
        flash[:error] = "Oh No! Looks like you entered incorrect information. Please try again."
        redirect_to login_path   
    end
    end

    #log out
    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end

end
