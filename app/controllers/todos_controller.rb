class TodosController < ApplicationController
  def edit
  	@todo = Todo.find_by_id(params[:id])
  end
end
