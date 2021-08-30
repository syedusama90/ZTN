Rails.application.routes.draw do
  resources :amounts
  devise_for :users
  resources :customer_details
  resources :invoice_histories
  get 'home/index'
  root to: "customer_details#index"
end
