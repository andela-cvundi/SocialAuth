Rails.application.routes.draw do
    root 'pages#index'
    get '/auth/:provider/callback', to: 'sessions#create'
    get '/auth/failure', to: 'sessions#auth_failure'
    delete '/logout', to: 'sessions#destroy'
end
