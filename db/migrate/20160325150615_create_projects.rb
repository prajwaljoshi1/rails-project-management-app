class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :organisation
      t.text :name
      t.text :description
      t.timestamps
    end
  end
end
