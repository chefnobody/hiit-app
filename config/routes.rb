Rails.application.routes.draw do

  resources :atheletes
  resources :workout_results
  resources :score_types
  resources :measurement_types
  resources :workout_movements
  resources :movement_types
  resources :movements
  resources :workouts
  get 'athletes/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :athletes

end
