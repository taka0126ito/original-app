Rails.application.routes.draw do
  devise_for :users, controllers: {
registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'potentials', to: 'users/registrations#new_potential'
    post 'potentials', to: 'users/registrations#create_potential'
  end
  root to: 'mains#index'

  resources :mains do
    resources :potentials
  end

  
end


