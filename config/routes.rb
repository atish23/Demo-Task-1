Rails.application.routes.draw do
  root 'dashboard#home'

  namespace :admin do
     resources :projects, only: [:index, :new,  :create, :destroy]
     get 'projects/:id/assign_project/:user_id' => 'projects#assign_project'
  end

  devise_for :users
  
end
