ComingElections::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :elections, only: [:index, :show]
  root to: 'elections#index'
end
