# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = find_recipes.paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.json { render json: @recipes }
    end
  end

  private

  def find_recipes
    return Recipe.order(rating_average: :desc) if params[:ingredients].blank?

    Recipe.with_any_ingredients(params[:ingredients])
  end
end
