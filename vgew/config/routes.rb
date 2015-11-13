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

  get 'cart/:id', to: redirect('/cart')
  resources :cart, only: [:show] do
    member do
      get :add_item
      get :remove_item
      get :checkout
    end
  end
  get 'cart', to: 'cart#show'


  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'blog' => 'welcome#blog'
  root to: 'welcome#index'
end
