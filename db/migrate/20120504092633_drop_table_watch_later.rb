class DropTableWatchLater < ActiveRecord::Migration
  def change
    drop_table :watch_laters
  end
end
