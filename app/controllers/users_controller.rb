class UsersController < ApplicationController
    before_filter :authenticate_user!
    
    def show
        @user = User.includes(:projects => [:todos]).find_by_id(params[:id])
        @projects = @user.projects
        @todos = @user.todos
        respond_to do |format|
              format.html
              format.json
        end
    end

end
