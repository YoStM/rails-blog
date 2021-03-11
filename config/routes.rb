Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'articles#index'

  # get '/articles', to: 'articles#index'
  # get '/articles/:id', to: 'articles#show'
  # are replaced by
  resources :articles do
    resources :comments
  end
  
end
