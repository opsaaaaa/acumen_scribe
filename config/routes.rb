Rails.application.routes.draw do

  authenticate :user do
    resources :text_notes
  end
  resources :project_accesses
  resources :boards
  resources :branches
  resources :projects
  devise_for :users

  get '/dashboard/:id', to: 'project_dashboard#root', as: 'dashboard_root'
  get '/dashboard/:id/branch/:branch_id', to: 'project_dashboard#branch', as: 'dashboard_branch'

  root to: 'home#index'
  get '/home', to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
