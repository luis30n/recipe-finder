# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :cook_time_minutes
      t.integer :prep_time_minutes
      t.jsonb :ingredients
      t.float :rating_average
      t.string :cuisine
      t.string :category
      t.string :author
      t.string :image_url

      t.timestamps
    end
  end
end
