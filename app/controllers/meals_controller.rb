class MealsController < ApplicationController

  def index
    @meals = Meal.search(params[:search])
  end

  def show
    index
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create(meals_params)
    if @meal.valid?
      redirect_to new_recipe_path
    else
      redirect_to new_meal_path
    end
  end

  private

  def meals_params
    params.require(:meal).permit(:name, :category_id, :img_url, :vid_url, :user_id, :search)
  end

end
