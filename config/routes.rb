Photodrewz::Application.routes.draw do
 
  get 'pictures' => 'pictures#index'

  get 'pictures/:id' => 'pictures#show', as: "picture"

  root :to => 'home#index'

end
