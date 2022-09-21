Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]

      post '/users/register', to: 'users#find_or_create'
      get '/users/find', to: 'users#show'
    end
  end
end
