Rails.application.routes.draw do
  
  resources :request_commercials
  resources :property_certificate_sequences
  resources :request_sequence_properties
  
  resources :request_properties do
    resources :appearers
    resources :petitioners
    resources :properties

    member do
      get :print
    end

  end

  get 
  
  devise_for :users

  authenticated :user do
    root 'welcome#index'
  end

  unauthenticated :user do
    devise_scope :user do
      root 'welcome#unregistered', as: :unregistered_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
