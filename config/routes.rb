Photodrewz::Application.routes.draw do
 
  devise_for :users

  post 'pictures' => 'pictures#create'

  get 'pictures' => 'pictures#index'

  get 'pictures/new' => 'pictures#new'
  get 'pictures/:id' => 'pictures#show', as: "picture"

  get 'pictures/:id/edit' => 'pictures#edit' as: 'edit_picture'

  root :to => 'pictures#index'

end
