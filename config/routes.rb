Photodrewz::Application.routes.draw do
 
  get 'pictures' => 'pictures#index'

  root :to => 'home#index'

end
