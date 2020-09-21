class ReactionsController < ApplicationController
    before_action :set_review, only: [:new]

    def new
        @reaction = @review.reactions.build
    end

    def create
        @reaction = current_user.reactions.create(reaction_params)
        if @reaction.save
            redirect_to reaction_path(@reaction)
        else
            flash[:error] = "Something Went Wrong!"
            render :new
        end
    end 

    def show
        @reaction = Reaction.find_by_id(params[:id])
    end

    def index
        if set_review
            @reactions = @review.reactions
        else
            @reactions = Reaction.all
        end
    end

    private

    def reaction_params
        params.require(:reaction).permit(:comment, :review_id)
    end

    def set_review
        @review = Review.find_by_id(params[:review_id])
    end

end
