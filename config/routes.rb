Rails.application.routes.draw do
  get '/search', to: 'search#index', as: 'search'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # # Defines the root path route ("/")
  # # root "posts#index"

  # defining the routes
  # get '/contact' , to:"root#contact"
  # get '/about'   , to:"root#about"
  resources :posts do
  	resources :comments
    # resources :likes, only: [:create, :destroy]
  end
    root "posts#index"                    #first root is keyword in ROR so it is basically to set the first page of web app or starting page of web app
  

end
