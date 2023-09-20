# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_920_200_313) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'recipes', force: :cascade do |t|
    t.string 'title'
    t.integer 'cook_time_minutes'
    t.integer 'prep_time_minutes'
    t.jsonb 'ingredients'
    t.float 'rating_average'
    t.string 'cuisine'
    t.string 'category'
    t.string 'author'
    t.string 'image_url'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.virtual 'ingredients_tsv', type: :tsvector,
                                 as: "to_tsvector('english'::regconfig, COALESCE((ingredients)::text, ''::text))", stored: true
    t.index ['ingredients_tsv'], name: 'index_recipes_on_ingredients_tsv', using: :gin
    t.index ['rating_average'], name: 'index_recipes_on_rating_average'
  end
end
