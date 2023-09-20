# frozen_string_literal: true

class Recipe < ApplicationRecord
  include PgSearch::Model
  pg_search_scope(
    :with_any_ingredients,
    against: :ingredients,
    using: { tsearch: { any_word: true, dictionary: 'english', tsvector_column: 'ingredients_tsv' } },
    order_within_rank: 'recipes.rating_average DESC'
  )
  self.per_page = 30
end
