Rails.application.routes.draw do
  resources :pokemons
  root 'home#index'

  devise_for :users, controllers: {registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
