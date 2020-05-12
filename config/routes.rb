Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#index'
  get 'games' => 'games#index'
  get 'games/new' => 'games#new'
  post 'games' => 'games#create'
  get 'users/:id' => 'users#show'
  delete 'games/:id' => 'games#destroy'
  get 'games/:id/edit' => 'games#edit'
  patch 'games/:id' => 'games#update'
end
