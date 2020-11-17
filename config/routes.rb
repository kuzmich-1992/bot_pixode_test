Rails.application.routes.draw do
  resources :athlets
  root 'athlets#index'
end
