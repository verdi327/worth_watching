class Category < ActiveRecord::Base
  has_many :video_categorizations
  has_many :videos, through: :video_categorizations
  attr_accessible :name, :video_ids
end
