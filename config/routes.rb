Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resource :auth, only: %i[create]
    end
  end
end
