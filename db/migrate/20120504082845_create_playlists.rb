class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.integer :video_id

      t.timestamps
    end
  end
end
