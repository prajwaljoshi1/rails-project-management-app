class ProjectmanagersController < ApplicationController
  def new
    @projectmanager = Projectmanager.new
  end
end
