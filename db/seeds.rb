# frozen_string_literal: true

return if Recipe.any?

file_path = Rails.root.join('data/recipes-en.json')
parsed_recipes = JSON.parse(File.read(file_path))

parsed_recipes.each do |recipe_data|
  Recipe.create!(
    title: recipe_data.fetch('title'),
    cook_time_minutes: recipe_data.fetch('cook_time'),
    prep_time_minutes: recipe_data.fetch('prep_time'),
    ingredients: recipe_data.fetch('ingredients'),
    rating_average: recipe_data.fetch('ratings'),
    cuisine: recipe_data.fetch('cuisine'),
    category: recipe_data.fetch('category'),
    author: recipe_data.fetch('author'),
    image_url: recipe_data.fetch('image')
  )
end

Rails.logger.info("Seeded #{Recipe.count} recipes.")
