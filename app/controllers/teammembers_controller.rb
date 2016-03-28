class TeammembersController < ApplicationController
  def new
    @teammember = Teammember.new
  end

  def create
    @teammember = Teammember.new teammember_params
    @teammember.projectmanager_id = session[:projectmanager_id]
    @teammember.project_id = session[:project_id]
    if params[:commit] == 'Skip'
      redirect_to new_task_path
    elsif @teammember.save && params[:commit] == 'Done'
      UserinviteMailer.invitation(email_details).deliver
       redirect_to new_task_path
    elsif @teammember.save && params[:commit] == 'More'
       UserinviteMailer.invitation(params[:teammember][:email]).deliver
       redirect_to new_teammember_path
     else
       render :new
     end
  end

  def signup
    @teammember = Teammember.find(params[:id])
  end

  def update
    @teammember = Teammember.find(params[:id])
    if @teammember.update(teammember_setup_params)
      flash[:notice] = "Your details was successfully updated"
      redirect_to project_teamview_path(@teammember)
    else
      render 'edit'
    end
  end


  private
  def teammember_params
    params.require(:teammember).permit(:email, :commit)
  end

  def teammember_setup_params
    params.require(:teammember).permit(:first_name, :last_name, :preferred_first_name, :profile_potrait, :password_digest)
  end

  def email_details
    details =[]
    projectmanager = Projectmanager.find id = session[:projectmanager_id]
    details.push( projectmanager.preferred_first_name)
    project = Project.find id = session[:project_id]
    details.push( project.name)
    details.push(params[:teammember][:email])
    details.push(@teammember.id)
    details
  end

end
