Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
        #,
        #omniauth_callbacks: 'users/omniauth_callbacks',
        #sessions: 'users/sessions'
      }
  root 'items#index'
  resources :items do
    member do
      get :confirm
      post :purchase
    end
  end

  resources :cards, only: [:index, :new, :destroy, :create]

  #get "users/sign_up/registration", to: "users#new"
  resources :phonenumber
  resources :address
  resources :creditcards
  resources :users, only: [:index, :edit, :new] do
    member do
      get :logout
      get :register
    end
  end
end
