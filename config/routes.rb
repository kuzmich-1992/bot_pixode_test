# frozen_string_literal: true

Rails.application.routes.draw do
  resources :athlets do
    collection do
      get :send_message
    end
  end
  root 'athlets#index'
end
