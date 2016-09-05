class Admin::ApiController < ApplicationController

	def list
		@project = Project.find_by_id(params[:id])
		@In_Progress = @project.todos.status_count('In_Progress')
		@Done = @project.todos.status_count('Done')
		@New = @project.todos.status_count('New')

		response = { :project => @project, :In_Progress => @In_Progress,:Done => @Done, :New => @New }
		render json: response
	end
end
