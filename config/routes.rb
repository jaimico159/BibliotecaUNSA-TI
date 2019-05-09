Rails.application.routes.draw do
  #resources :books

  get 'authors/index'
  get 'authors/edit'
  get 'authors/show'
  get 'authors/new'
  get 'books/index'
  get 'books/edit'
  get 'books/new'
  get 'books/show'
  get 'books/create'
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
