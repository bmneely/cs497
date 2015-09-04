Rails.application.routes.draw do
  devise_for :users

  get 'contact' => 'welcome#contact'
  get 'blog' => 'welcome#blog'
  get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
