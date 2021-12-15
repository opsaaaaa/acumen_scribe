Rails.application.routes.draw do

  authenticate :user do
    resources :text_notes
  end
  resources :project_accesses
  resources :boards
  resources :branches
  resources :projects
  devise_for :users
  root to: 'home#index'
  get '/home', to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
