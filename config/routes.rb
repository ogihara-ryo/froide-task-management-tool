Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  devise_scope :user do
    authenticated :user do
      root :to => 'timelines#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
