Rails.application.routes.draw do
  resources :watch_lists
  resources :pets
  resources :users

  get 'users/:id/watch_lists', to: 'users#view_list' , as: :view_watch_list
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
