# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    sequence(:title) { |n| "Delicious Recipe #{n}" }
    cook_time_minutes { 35 }
    prep_time_minutes { 10 }
    ingredients do
      [
        '1 pound thin-sliced bacon',
        '2 tablespoons bacon drippings',
        '3 pounds skinless, boneless chicken breast halves, cut into bite size pieces',
        '¼ cup Buffalo wing sauce',
        '2 tablespoons butter, melted',
        '12 (10 inch) flour tortillas',
        '1 cup diced fresh tomato',
        '¾ cup ranch dressing, divided'
      ]
    end
    rating_average { rand(0.0..5) }
    cuisine { '' }
    category { 'Spanish recipes' }
    author { 'Great Chef' }
    image_url { 'http://image.jpg' }
  end
end
