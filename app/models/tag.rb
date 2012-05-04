class Tag < ActiveRecord::Base
  has_many :video_tags, dependent: :destroy
  has_many :videos, through: :video_tags

  attr_accessible :name

  def self.get_tag_name
    Tag.all.map(&:name).map {|tag| tag.strip!}.compact!
  end

  def self.order_into_hash
    hash = Hash.new
    Tag.get_tag_name.each do |tag|
      if hash.keys.include?(tag)
        hash[tag] += 1
      else
        hash[tag] = 1
      end
    end
    hash
  end

  def self.top_five
    desc_list = Tag.order_into_hash.sort_by {|tag, count| count}.reverse
    desc_list[0..4].map {|tag| tag[0]}
  end

  def self.find_tag_objects
    tag_names = Tag.top_five
    tag_names.map do |tag|
      Tag.find_by_name(tag)
    end
  end
end
