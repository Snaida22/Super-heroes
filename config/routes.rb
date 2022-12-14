Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :hero_powers,only:[:create]
  resources :heroes,only:[:index,:show] do
    resources :powers, only: [:index]
  end
  
  resources :powers,only:[:index,:show,:update]
end
