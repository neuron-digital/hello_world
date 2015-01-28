Rails.application.routes.draw do
  devise_for :users
  root to: 'snippets#index'

  index_and_show = [:index, :show]

  resources :snippets, only: index_and_show

  resources :users, only: index_and_show do
    resources :snippets, only: index_and_show
  end

  namespace :my, module: :current_user do
    resources :snippets do
      put :publish, on: :member
    end
  end
end
