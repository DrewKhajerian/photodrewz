Photodrewz::Application.routes.draw do
 
  # devise_for :users

  # dont need these once resources is used
  # post 'pictures' => 'pictures#create'
  # get 'pictures' => 'pictures#index'
  # get 'pictures/new' => 'pictures#new'
  # # get 'pictures/table' => 'pictures#table'
  # get 'pictures/:id' => 'pictures#show', as: "picture"
  # get 'pictures/:id/edit' => 'pictures#edit', as: 'edit_picture'

  # resources makes routes for create, read, edit, delete in one line
  # Follows CRUD
  resources :pictures 

  root :to => 'pictures#index'

end
