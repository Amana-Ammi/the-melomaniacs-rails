class SessionsController < ApplicationController
    
    def new
    end
 
    def create
        session[:email] = params[:email]
        redirect_to '/'
    end

    #log out
    def destroy
        session.delete :email
    end

end
