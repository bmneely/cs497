Rails.application.routes.draw do
  resources :items
  devise_for :users

  resources :users do
    resources :stores, only: [:new, :create]
  end

  resources :stores, except: [:new, :create]

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'blog' => 'welcome#blog'
  root to: 'welcome#index'
end
