# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(rating_average: :desc)
    render json: @recipes
  end
end
