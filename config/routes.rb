Rails.application.routes.draw do
  devise_for :users
  root to: 'kotoba_wallet#index'
end
