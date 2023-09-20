# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RecipesController, type: :request do
  describe 'GET /index' do
    subject(:get_index) do
      get('/recipes', params:, headers:)
    end

    let(:awesome_recipe) { create(:recipe, rating_average: 5) }
    let(:bad_recipe) { create(:recipe, rating_average: 1.5) }
    let(:normal_recipe) { create(:recipe, rating_average: 3.9) }
    let!(:ordered_recipe_ids) { [awesome_recipe.id, normal_recipe.id, bad_recipe.id] }
    let(:params) { {} }
    let(:headers) { { accept: 'application/json' } }

    it 'renders a successful JSON response' do
      get_index

      expect(response).to be_successful
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end

    it 'orders the recipes based on the rating average' do
      get_index
      recipes_json = JSON.parse(response.body)
      expect(recipes_json.pluck('id')).to eq(ordered_recipe_ids)
    end
  end
end
