class Admin::TodosController < Admin::BaseController
    respond_to :html, :js
    
    def new
     @project = Project.find_by_id(params[:project])
     @todo = Todo.new
    end

    def create
        @project = Project.find_by_id(params[:todo][:project_id])
        @todos = @project.todos
        @todo = Todo.create(todo_params)
        assign_developer_todo
    end
    
private
    def assign_developer_todo
      user = User.find_by_id(params[:user_id])
      user.todos << @todo
      user.projects << @todo.project unless user.projects.include?(@todo.project)
      user.save!           
    end

    def todo_params
        params.require(:todo).permit!
    end
end
