class Playlist < ActiveRecord::Base
  has_many :videos
  belongs_to :user_id
  attr_accessible :video_id, :watch_later_id
end
