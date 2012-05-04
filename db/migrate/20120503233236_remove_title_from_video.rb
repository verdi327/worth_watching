class RemoveTitleFromVideo < ActiveRecord::Migration
  def change
    remove_column :videos, :title
  end
end
