class ApplicationController < ActionController::Base
    def home
    end

    private
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
end
