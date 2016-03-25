class CreateProjectmanagers < ActiveRecord::Migration
  def change
    create_table :projectmanagers do |t|
        t.text :first_name
        t.text :last_name
        t.text :preferred_first_name
        t.text :email
        t.text :password_digest
        t.text :profile_potrait
        t.timestamps
    end
  end
end
