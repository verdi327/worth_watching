class CreateVideoCategorizations < ActiveRecord::Migration
  def change
    create_table :video_categorizations do |t|
      t.integer :category_id
      t.integer :video_id
      t.timestamps
    end
  end
end
