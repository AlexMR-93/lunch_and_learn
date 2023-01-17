Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes', to: 'recipes#index'
      get 'learning_resources',  to: 'learning_resources#show'
      get 'air_quality', to: 'air_quality#show'
    end
  end
end