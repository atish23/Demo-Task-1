Rails.application.routes.draw do
  get 'todos/edit'

  root 'dashboard#home'

  namespace :admin do
     get "/" => "projects#status"
     get "/charts" => "projects#charts"
     get 'api/list/:id' => "api#list"
     resources :projects, only: [:index, :new,  :create, :destroy, :show]
     post 'projects/assign_project' => 'projects#assign_project'
     resources :todos
  end

  devise_for :users
  resources :users, only: [:show] do
  	collection do
  		post "update_todo"
  	end
  end
  resources :todos, only: [:edit]

end
