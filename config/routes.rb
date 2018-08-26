Rails.application.routes.draw do
  get "fortune_url" => 'api/example_pages#fortune_action'
  get "random_number_url" => 'api/example_pages#random_number_action'
  get "lyrics_url" => 'api/example_pages#lyrics_action'
end
