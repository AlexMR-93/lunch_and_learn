Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes', to: 'recipes#index'
      get 'learning_resources',  to: 'learning_resources#show'
      post 'users', to: 'users#create'
      post 'favorites', to: 'favorites#create'
      get 'favorites', to: 'favorites#index'
    end
  end
end