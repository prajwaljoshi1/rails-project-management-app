# == Schema Information
#
# Table name: projectmanagers
#
#  id                   :integer          not null, primary key
#  first_name           :text
#  last_name            :text
#  preferred_first_name :text
#  email                :text
#  password_digest      :text
#  profile_potrait      :text
#  created_at           :datetime
#  updated_at           :datetime
#

class Projectmanager < ActiveRecord::Base
  before_save {self.email = email.downcase}
  has_many :tasks
  has_many :projects
  has_many :teammembers
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
end
