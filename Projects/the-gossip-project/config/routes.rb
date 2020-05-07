Rails.application.routes.draw do
    get '/', to: 'welcome#show'
    
    get '/welcome', to: 'welcome#show'
    get '/welcome/:first_name', to: 'welcome#show'

    get 'user/:id', to: 'user#show'

    # rails routes for gossips:
    resources :index
    resources :contact, only: [:show]
    resources :team, only: [:show]
    resources :gossips
    resources :users
end
