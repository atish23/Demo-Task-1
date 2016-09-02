Rails.application.routes.draw do
  root 'dashboard#home'

  namespace :admin do
     resources :projects, only: [:index, :new,  :create, :destroy, :show]
     post 'projects/assign_project' => 'projects#assign_project'
     resources :todos
  end

  devise_for :users
  resources :users, only: [:show]

end
