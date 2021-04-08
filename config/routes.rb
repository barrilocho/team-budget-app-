Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/health', to: 'health#health'

  resources :families, only: [:index, :show, :create, :update]
  resources :categories, only: [:index, :show, :create, :update]
end
