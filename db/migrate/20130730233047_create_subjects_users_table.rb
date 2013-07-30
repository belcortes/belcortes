class CreateSubjectsUsersTable < ActiveRecord::Migration
  def change
    create_table :subjects_users, :id => false do |t|
      t.integer :subject_id
      t.integer :user_id
    end
  end
end
