class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :destroy]

  def index
    @reviews = reviews
  end

  def create
    @review = Review.new
    @review.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to review_path
  end

  def new
    @review = Review.new
  end

  def show
    @review = Review.find(set_review)
  end


  def destroy
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:comment)
   end

   def set_review
     @review = Review.find(params[:id])
   end
end
