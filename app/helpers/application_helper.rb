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

    def authorized?(review)
        review.user == current_user
    end

end
