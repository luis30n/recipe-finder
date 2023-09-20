# frozen_string_literal: true

class AddIngredientsTsvToRecipes < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      ALTER TABLE recipes
      ADD COLUMN ingredients_tsv tsvector GENERATED ALWAYS AS (
        to_tsvector('english', COALESCE(ingredients::text, ''))
      ) STORED;
    SQL
  end

  def down
    remove_column :recipes, :ingredients_tsv
  end
end
