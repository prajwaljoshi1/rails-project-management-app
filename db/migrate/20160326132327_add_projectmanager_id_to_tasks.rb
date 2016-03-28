class AddProjectmanagerIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :projectmanager_id, :integer
  end
end
