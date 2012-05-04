class Playlist < ActiveRecord::Base
  has_many :videos
  belongs_to :user_id
  attr_accessible :video_id
end
