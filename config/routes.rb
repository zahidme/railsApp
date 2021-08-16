Rails.application.routes.draw do
  devise_for :users
  root to: "post#index"
  get 'post/index'
  get 'post/new'
  post 'post/create'
  patch 'post/update'
  get 'post/list'
  get 'post/show'
  get 'post/edit'
  get 'post/destroy'
  #get 'post/update'
  get 'post/search'
  

  
  get 'comment/index'
  get 'comment/new'
  post 'comment/create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
