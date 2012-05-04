class RemoveWatchLaterIdFromPlaylists < ActiveRecord::Migration
  def change
    remove_column :playlists, :watch_later_id
  end
end
