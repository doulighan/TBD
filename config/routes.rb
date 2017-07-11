Rails.application.routes.draw do
  mount ActionCable.server => '/test'
  
  resources :users
end
