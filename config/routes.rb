Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments # This creates comments as a nested resource within articles
  end

  # get '/articles', to: 'articles#index'
  # get "/articles/:id", to: "articles#show"
end
