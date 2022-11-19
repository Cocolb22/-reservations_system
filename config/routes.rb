Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :reservations, only: :index do
    collection do
      post :bulk_create
      get :import
    end
  end

  root to: 'reservations#import'


end
