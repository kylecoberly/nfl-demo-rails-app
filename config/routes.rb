Rails.application.routes.draw do
  resources :players, only: [:index, :show, :new, :create]
  resources :teams, only: [:index]

  get "search", to: "players#index"
end
