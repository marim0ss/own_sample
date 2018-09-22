Rails.application.routes.draw do

  resources :diaries
  get '/users', to: 'users#index'
  get 'users/new'
end
