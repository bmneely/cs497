Rails.application.routes.draw do
  devise_for :users

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'blog' => 'welcome#blog'
  root to: 'welcome#index'
end
