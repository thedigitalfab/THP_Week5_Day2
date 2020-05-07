Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/', to: 'welcome#show'
    
    get '/welcome', to: 'welcome#show'
    get '/welcome/:first_name', to: 'welcome#show'

    get 'user/:id', to: 'user#show'

    get 'gossip/:id', to: 'gossip#show'
    
    get '/contact', to: 'contact#show'
    get '/team', to: 'team#show'
end
