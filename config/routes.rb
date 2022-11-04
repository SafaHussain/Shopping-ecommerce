Rails.application.routes.draw do
 
  
  resources :carts
  resources :cartitems
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  namespace :admin do
    resources :categories do 
      member do
        get :sub
      end
    end
    resources :subcategories do
      
    end
    resources :products do 
      
    end

  end
  root to:"homes#index"

  # put 'admin/products/sub', to:'products#sub'
end