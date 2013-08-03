class AddScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :score, :integer, default: false
  end
end
