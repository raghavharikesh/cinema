Rails.application.routes.draw do
  root 'theatres#welcome'
  get 'sessions/new'
  get '/signup',to: 'customers#new'
  post '/signup',to: 'customers#create'
  get '/login',to: 'sessions#index'
  post'/login',to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  resources :customers	
  get "/theatres/list",to:"theatres#list_all_theatre"
  resources :theatres do
  	resources :screens do
      resources :movies 
        

    
    end
  end
   
end
