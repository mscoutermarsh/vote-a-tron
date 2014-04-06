VoteATron::Application.routes.draw do
  mount RailsAdmin::Engine => '/back', as: 'rails_admin'
  devise_for :admins

  root to: 'pages#home'

  namespace :api, except: :destroy, defaults: { format: 'json' } do
    resources :polls, only: :show do
      resources :votes, only: :create
    end
  end
end
