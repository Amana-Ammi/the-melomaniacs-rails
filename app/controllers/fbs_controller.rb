class FbsController < ApplicationController
    def create
        @fb = Fb.find_or_create_by(uid: auth['uid']) do |u|
          u.name = auth['info']['name']
          u.image = auth['info']['image']

        end
#this could overlap a user from the users table. Fix! Foreign keys.
        session[:user_id] = @fb.id
        redirect_to fb_path(@fb)
    end
     
    def show
        @fb = Fb.find(params[:id])
    end
      private
     
      def auth
        request.env['omniauth.auth']
      end

      def first_name(full_name)
        full_name.split(" ")[0]
      end
end
