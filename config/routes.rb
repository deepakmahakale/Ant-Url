Rails.application.routes.draw do
  resources :hits
  resources :ants, only: [:index, :create]

  root 'ants#index'
  match '/:slug' => 'ants#show', via: [:get]
end
