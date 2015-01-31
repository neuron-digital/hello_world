Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  root to: 'snippets#index'

  get 'langs/:lang_id',     to: 'langs#show',   as: :lang
  get 'rubrics/:rubric_id', to: 'rubrics#show', as: :rubric

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
