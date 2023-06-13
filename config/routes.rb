Rails.application.routes.draw do
  mount Tus::Server => "/files"

  resources :messages, only: [:index, :create]
end
