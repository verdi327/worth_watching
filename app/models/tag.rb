class Tag < ActiveRecord::Base
  has_many :video_tags, dependent: :destroy
  has_many :videos, through: :video_tags

  attr_accessible :name
end
