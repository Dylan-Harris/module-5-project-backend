class Api::V1::ReviewsController < ApplicationController
    before_action :authorized
    def index 
        @review = Review.all
    end

    def show
         @review = Review.find(params[:id])
    end
    def create
        # byebug
        @review = Review.create(review_params)
        if @review.valid?
            render json: { review: ReviewSerializer.new(@review) }, status: :created
        else
            render json: { error: "Failed to create review" }, status: :not_acceptable
        end
    end

    def destroy
        @review = Review.find_by(id: params[:id])
         @review.destroy
        render json: {message: "Review deleted"}, status: :accepted
    end

    private
    def review_params
        params.require(:review).permit(:user_id, :game_id, :content)
    end
end
