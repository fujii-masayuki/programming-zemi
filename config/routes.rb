Rails.application.routes.draw do
  get 'session/new'
  get 'sessions/new'
  get 'signup' => 'users#new'
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => "static_pages#about"
  get 'contact' => "static_pages#contact"
  #resources :tweets
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
end
