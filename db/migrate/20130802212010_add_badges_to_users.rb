class AddBadgesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :badges, :text, default: false
  end
end
