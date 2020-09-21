class ReviewsController < ApplicationController

    before_action :set_review, only: [:show, :update, :edit, :destroy]

    def index
        @reviews = Review.all
    end

    def show
    end
    
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        @review.user_id = session[:user_id]
        if @review.save
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def edit
        not_current_user
    end

    def update
        not_current_user
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy
        not_current_user
        @review.destroy
        redirect_to reviews_path , notice: "Deletion Successful"
    end

    private

    def review_params
        params.require(:review).permit(:title, :content, :song_or_album_name, :artist_name)
    end

    def set_review
        @review = Review.find_by_id(params[:id])
    end

    def not_current_user
        if @review.user != current_user
            redirect_to reviews_path
        end
    end

end
