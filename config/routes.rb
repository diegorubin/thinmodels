Rails.application.routes.draw do
  resources :people
  resources :simple_people, only: [:new, :create]

  root to: "people#index"
end

