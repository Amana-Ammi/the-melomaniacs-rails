class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def spotify
        spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
        # Now you can access user's private data, create playlists and much more
      end

    private

    def user_params
        params.require(:user).permit(:username,:email,:password)
    end

end
