Rails.application.routes.draw do
  
  get 'cart/index'

  resources :items
  root 'static_pages#home'

  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get '/products' => 'static_pages#products'
  
  get '/login' => 'user# login'
  get '/logout' => 'user#logout'
  
  get '/cart/clear', to: 'cart#clearCart'
  get '/cart' => 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'


  
  #get 'static_pages/home'
  #get 'static_pages/help'
  #get 'static_pages/about'
  #get 'static_pages/products'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
