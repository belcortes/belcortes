class AddSubtopicsUsersTable < ActiveRecord::Migration
  def change
    create_table :subtopics_users, :id => false do |t|
      t.integer :user_id
      t.integer :subtopic_id
    end
  end
end
