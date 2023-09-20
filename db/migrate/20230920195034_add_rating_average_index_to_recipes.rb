# frozen_string_literal: true

class AddRatingAverageIndexToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_index :recipes, :rating_average
  end
end
