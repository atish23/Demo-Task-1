class UsersController < ApplicationController
    before_filter :authenticate_user!
    respond_to :html,:js
    def show
        @user = User.includes(:projects => [:todos]).find_by_id(params[:id])
        @projects = @user.projects
        @todos = @user.todos
        respond_to do |format|
              format.html
              format.json
        end
    end

    def update_todo
       @todo = Todo.find_by_id(params[:id])
       @todo.status = params[:status]
       @todo.save!
       redirect_to user_path(current_user)
    end
end
