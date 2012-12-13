TakeThis::Application.routes.draw do
  devise_for :users

  root :to => 'home#index', as: :home
  resources :articles
end
