class CreateUsersTopicsTable < ActiveRecord::Migration
  def change
    create_table :users_topics, :id => false do |t|
      t.integer :user_id
      t.integer :topic_id
    end
  end
end
