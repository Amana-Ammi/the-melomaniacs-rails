class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end
    
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if @review.save
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def show
        @review = Review.find(params[:id])
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy
       Review.find(params[:id]).destroy  
       redirect_to review_url      
    end

    
    

    private

    def review_params
        params.require(:review).permit(:title,:content)
    end
end
