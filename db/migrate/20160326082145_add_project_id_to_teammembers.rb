class AddProjectIdToTeammembers < ActiveRecord::Migration
  def change
    add_column :teammembers, :project_id, :integer
  end
end
