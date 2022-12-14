Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]

    resources :products, only: [:show, :index] do 
      resources :reviews, only: [:index]      
    end
    get '/products/search/:query', to: 'products#search'
    

    resource :session, only: [:show, :create, :destroy]

    resources :cart_items, only: [:index, :create, :destroy, :update]
    resources :reviews, only: [:create, :update, :destroy]
  end

  get '*path', to: "static_pages#frontend_index"

end
