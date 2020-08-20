Rails.application.routes.draw do
  resources :watch_lists
  resources :pets, only: [:index, :show]
  resources :users, only: [:show, :new, :create]
  post '/pets/:id/capture', to: 'pets#capture', as: 'pet_capture'
  put '/pets/:id/like', to: 'pets#like' , as: 'pet_like'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions/login', to: 'sessions#login', as: 'login'



  #get 'users/:id/watch_lists', to: 'users#view_list' , as: :view_watch_list
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
