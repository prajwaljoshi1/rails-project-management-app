# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  organisation      :text
#  name              :text
#  description       :text
#  projectmanager_id :integer
#

class Project < ActiveRecord::Base
  belongs_to :projectmanager
  has_many :teammembers
  has_many :tasks

  validates :projectmanager_id, :presence => true
end
