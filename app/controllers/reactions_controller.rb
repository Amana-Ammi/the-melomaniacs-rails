class ReactionsController < ApplicationController

    def new
        @review = Review.find_by_id(params[:review_id])
        @reaction = @review.reactions.build
    end

    def create
        @reaction = Reaction.new(reaction_params)
        if @reaction.save
            redirect_to reaction_path(@reaction)
        else
            render :new
        end
    end 

    def show
        @reaction = Reaction.find(params[:id])
    end

    def index
    end

    private

    def reaction_params
        params.require(:reaction).permit(:comment, :review_id)
    end
end
