class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create ]

  # def index
  #   @reviews = Review.all
  # end
  #
  # def new
  #   @review = Review.new
  # end

  def create
    @review = @restaurant.reviews.build(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to @restaurant, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
