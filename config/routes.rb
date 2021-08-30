Rails.application.routes.draw do
  resources :customer_details
  resources :invoice_histories
  get 'home/index'
end
