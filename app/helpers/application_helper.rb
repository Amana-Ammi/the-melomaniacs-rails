module ApplicationHelper

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def logged_in?
        !!current_user
    end

    def redirect_if_not_logged_in
        if !logged_in?
            redirect_to '/'
        end
    end

    def not_current_user(i)
        if i.user != current_user
            redirect_to '/'
        end
    end
    
end
