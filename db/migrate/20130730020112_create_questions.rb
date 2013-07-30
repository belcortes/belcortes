class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      topic_id :integer

      t.timestamps
    end
  end
end
