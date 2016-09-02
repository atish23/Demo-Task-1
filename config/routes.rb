Rails.application.routes.draw do
  root 'dashboard#home'

  namespace :admin do
     resources :projects, only: [:index, :new,  :create, :destroy, :show]
     get 'projects/:id/assign_project/:user_id' => 'projects#assign_project'
     resources :todos
  end

  devise_for :users
  resources :users, only: [:show]
end
