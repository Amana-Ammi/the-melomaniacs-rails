class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :update]

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
        set_review
    end

    def update
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy
        set_review
        if @review.present?
        @review.destroy
        redirect_to review_path 
        else
            render :edit     
        end
    end

    private

    def review_params
        params.require(:review).permit(:title,:content,:song_or_album_name, :artist_name)
    end

    def set_review
        @review = Review.find_by_id(params[:id])
    end
end
