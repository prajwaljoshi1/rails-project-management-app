class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    @project.projectmanager_id = session[:projectmanager_id]
    if @project.save
      session[:project_id] = @project.id
      redirect_to  new_teammember_path
    else
      render :new
    end
  end

  def index
    if session[:is_manager?] = true
        @projects = Project.where(projectmanager_id: session[:user_id])
    elsif session[:is_manager?] = false
        flash[:failure] ="Feature in development."
        #@projects = many to many will do later
      else
        flash[:failure] ="Something went wrong."
        redirect_to root_path
      end
  end

  def show
    @project = Project.find params[:id]
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :organisation)
  end
end
