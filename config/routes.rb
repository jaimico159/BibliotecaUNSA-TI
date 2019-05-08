Rails.application.routes.draw do
  get 'books/index'
  get 'books/edit'
  get 'books/new'
  get 'books/show'
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  get 'users/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
