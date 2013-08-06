class AddBadgeToSubtopics < ActiveRecord::Migration
  def change
    add_column :subtopics, :badge, :text
  end
end
