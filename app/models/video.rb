class Video < ActiveRecord::Base
  has_many :video_categorizations
  has_many :categories, through: :video_categorizations
  has_many :video_tags, dependent: :destroy
  has_many :tags, through: :video_tags
  has_many :playlists, dependent: :destroy
  attr_writer :tag_names
  after_save :assign_tags

  attr_accessible :url, :user_id, :category_ids, :tag_names

  def tag_names
    @tag_names || tags.map(&:name).join(' ')
  end

  def assign_tags
    if @tag_names
      self.tags = @tag_names.split(/\s+/).map do |name|
        Tag.find_or_create_by_name(name)
      end
    end
  end

  def embedly_response
    api = Embedly::API.new(key: EMBEDLY_KEY)
    obj = api.oembed(url: self.url)
    obj.first
  end

  def host
    embedly_response.provider_name
  end

  def embed
    unless embedly_response.html.nil?
      embedly_response.html.html_safe
    end
  end

  def title
    embedly_response.title
  end

  def thumbnail
    embedly_response.thumbnail_url
  end

end
