Rails.application.routes.draw do
    get '/', to: 'welcome#show'
    
    get '/welcome', to: 'welcome#show'
    get '/welcome/:first_name', to: 'welcome#show'

    get 'user/:id', to: 'user#show'

    get 'gossip/:id', to: 'gossip#show'
    
    get '/contact', to: 'contact#show'
    get '/team', to: 'team#show'

    # rails routes for gossips:
    resources :gossips
end
