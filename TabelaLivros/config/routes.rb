Rails.application.routes.draw do
  resources :livros, only: [:index]
  root to: "livros#index"
end
