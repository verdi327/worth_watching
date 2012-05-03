class Video < ActiveRecord::Base
  attr_accessible :title, :url, :user_id
  after_create :format_video

  def format_video
    @video = UnvlogIt.new(self.url)
  end
end
