class Admin::TodosController < Admin::BaseController
    respond_to :html, :js
    
    def new
     @project = Project.find_by_id(params[:project])
     @todo = Todo.new
    end
    def create
        @todos = Todo.all
        @todo = Todo.create(todo_params)
    end
    
private
    def todo_params
        params.require(:todo).permit!
    end
end
