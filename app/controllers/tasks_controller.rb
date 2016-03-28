class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    @task.projectmanager_id = session[:projectmanager_id]
    @task.project_id = session[:project_id]
    if @task.save && params[:commit] == 'Done'
      session[:user_id] = session[:projectmanager_id]
      session[:is_manager?] = true
      redirect_to projects_Index_path
    elsif @task.save && params[:commit] == 'More'
      redirect_to new_task_path
    else
      render :new
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :difficulty, :deadline, :commit)
  end

end
