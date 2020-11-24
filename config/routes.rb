# frozen_string_literal: true

Rails.application.routes.draw do
  resources :athlets, defaults: { format: :json } do
    collection do
      get :send_message
    end
  end
  root 'athlets#index'
end
