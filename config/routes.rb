# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'words#index'

  scope :api do
    scope :v1 do
      resources :words, only: :index
      get '/status', to: 'status#show'
    end
  end

end
