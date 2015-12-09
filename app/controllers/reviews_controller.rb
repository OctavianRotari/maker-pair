class ReviewsController < ApplicationController
  def new
    @profile = Profile.find(params[:profile_id])
    @review = Review.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @profile.reviews.create(review_params)
    redirect_to profile_path(@profile)
  end

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end
end
