Rails.application.routes.draw do
  resources :greetings
  root 'root#index'
end
