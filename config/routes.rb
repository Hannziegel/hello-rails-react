Rails.application.routes.draw do
  resources :greetings, only: [ :index ]
  root 'root#index'
end
