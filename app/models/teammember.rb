# == Schema Information
#
# Table name: teammembers
#
#  id                   :integer          not null, primary key
#  email                :text
#  first_name           :text
#  last_name            :text
#  preferred_first_name :text
#  password_digest      :text
#  profile_potrait      :text
#  project_id           :integer
#  projectmanager_id    :integer
#

class Teammember < ActiveRecord::Base
belongs_to :projectmanager
belongs_to :project

# has_secure_password
validates :projectmanager_id, :presence => true
validates :project_id, :presence => true
end
