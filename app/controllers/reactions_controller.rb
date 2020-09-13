class ReactionsController < ApplicationController

    def new
        @review = Review.find_by_id(params[:id])
        @reaction = @review.reactions.build
    end

    def create
    end

    def index
    end

end
