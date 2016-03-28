class ProjectmanagersController < ApplicationController
  def new
    @projectmanager = Projectmanager.new
  end

  def create
    @projectmanager = Projectmanager.new projectmanager_params
    if @projectmanager.save
      session[:projectmanager_id] = @projectmanager.id
      flash[:success] ="#{@projectmanager.preferred_first_name} succesfully registered as project manager."
      redirect_to  new_project_path
    else
      render :new
    end
  end

  def home
    # @projectmanager = Projectmanager.last
    # @project = Project.find id = session[:project_id]
    # #@tasks = Task.find_by(project_id: @project.id)
    # @tasks = Task.where(project_id: @project.id)
    # #@teammembers = Teammember.find_by(project_id: @project.id)
    # @teammembers = Teammember.where(project_id: @project.id)
  end

  private
  def projectmanager_params
    params.require(:projectmanager).permit(:first_name, :email, :last_name, :preferred_first_name, :profile_potrait, :password_digest, :password_confirmation)
  end
end
