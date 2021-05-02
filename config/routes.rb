Rails.application.routes.draw do
  # may need to refactor these at some point.
  resources :cars
  resources :origins
  get '/test', to: 'application#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
