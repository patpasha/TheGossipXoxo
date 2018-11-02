Rails.application.routes.draw do

  get 'user/home' => 'user#home'
  get 'user/login' => 'user#login'
  post 'user/login' => 'user#check'
  get 'user/logout' => 'user#logout'
  post 'user/logout' => 'user#logout'
  resources :registration


  get '/', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'


  resources :gossips

  resources :gossips do
    resources :comments
  end



end
