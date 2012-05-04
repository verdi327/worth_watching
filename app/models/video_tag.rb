class VideoTag < ActiveRecord::Base
  belongs_to :video
  belongs_to :tag

  attr_accessible :tag_id, :video_id
end
