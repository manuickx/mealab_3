class MealsController < ApplicationController

  def index
    @meals = Meal.search(params[:search])
  end

  def show
    index
    @meal = Meal.find(params[:id])
  end

  private

  def meals_params
    params.require(:meal).permit(:name, :category_id, :img_url, :vid_url, :search)
  end

end
