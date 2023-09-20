# frozen_string_literal: true

class AddIndexToIngredientsTsvRecipes < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    add_index :recipes, :ingredients_tsv, using: :gin, algorithm: :concurrently
  end
end
