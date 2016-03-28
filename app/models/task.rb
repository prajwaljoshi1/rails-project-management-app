# == Schema Information
#
# Table name: tasks
#
#  id                :integer          not null, primary key
#  title             :text
#  description       :text
#  status            :text
#  completion        :boolean
#  difficulty        :integer
#  deadline          :text
#  project_id        :integer
#  projectmanager_id :integer
#

class Task < ActiveRecord::Base
  belongs_to :projectmanager
  belongs_to :project
end
