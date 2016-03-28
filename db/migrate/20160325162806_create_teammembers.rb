class CreateTeammembers < ActiveRecord::Migration
  def change
    create_table :teammembers do |t|
      t.text :email
      t.text :first_name
      t.text :last_name
      t.text :preferred_first_name
      t.text :password_digest
      t.text :profile_potrait
    end
  end
end
