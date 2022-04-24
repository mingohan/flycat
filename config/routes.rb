Rails.application.routes.draw do
  devise_for :users , controllers: { confirmations: 'confirmations' }
  resources :employees
  root 'home#index'
  get 'home/about'


  namespace :admin do
    resources :vendors, except: [:show]
  end
end
