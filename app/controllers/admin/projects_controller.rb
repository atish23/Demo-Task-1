class Admin::ProjectsController < Admin::BaseController
  respond_to :html, :js

  def index
    @projects = Project.all
      respond_to do |format|
        format.html
        format.json
      end
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @projects = Project.all
    @project = Project.create(project_params)
  end
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  
    respond_to do |format|
      format.html { redirect_to(admin_projects_path) }
    end
  end
  
  def assign_project
    project = Project.find_by_id(params[:id])
    project.users << User.find_by_id(params[:user_id])
    project.save!
    render json: project
  end

private
  def project_params
    params.require(:project).permit!
  end
end
