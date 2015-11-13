Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :locations
    end
  end

  root 'locations#index'
  resources :locations


resources :locations
 
end
