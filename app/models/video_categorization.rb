class VideoCategorization < ActiveRecord::Base
  belongs_to :video
  belongs_to :category
  # attr_accessible :title, :body
end
