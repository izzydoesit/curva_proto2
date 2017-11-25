Rails.application.routes.draw do

  devise_for :users
  
  get '/shop' => 'static_pages#shop'
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  resources :products
  resources :charges

  root 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/blog'

  get 'static_pages/classes'

  get 'static_pages/ketogenics'

  get 'static_pages/schedule'

  get 'static_pages/training'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
