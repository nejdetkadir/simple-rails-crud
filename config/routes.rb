Rails.application.routes.draw do
  root 'home#index'
  get '/phones', to: 'phones#new'
  
  resources :phones
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
