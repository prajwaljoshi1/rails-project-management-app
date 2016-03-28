class AddProjectmanagerIdToTeammembers < ActiveRecord::Migration
  def change
    add_column :teammembers, :projectmanager_id, :integer
  end
end
