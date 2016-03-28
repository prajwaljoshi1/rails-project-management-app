class AddProjectmanagerIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :projectmanager_id, :integer
  end
end
