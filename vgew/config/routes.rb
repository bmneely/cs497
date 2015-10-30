Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :stores, only: [:new, :create]
  end

  resources :stores, except: [:new, :create] do
    resources :items
  end

  resources :items, only: [:show] do
    resources :comments, only: [:create, :destroy]
  end

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'blog' => 'welcome#blog'
  root to: 'welcome#index'
end
