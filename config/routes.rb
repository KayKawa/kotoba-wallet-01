Rails.application.routes.draw do
  root to: 'kotoba_wallet#home'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :wallets, only: %i[index show]
end
