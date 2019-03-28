class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

private

  def recipe_params
    params.require(:recipe).permit(:meal_id, :ingredient_id, :measure)
  end

end
