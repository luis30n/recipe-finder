# frozen_string_literal: true

Rails.application.routes.draw do
  resources :recipes, only: :index
  root 'recipes#index'
end
