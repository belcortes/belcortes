class CreateBagdes < ActiveRecord::Migration
  def change
    create_table :bagdes do |t|
      t.text :image

      t.timestamps
    end
  end
end
