class Video < ActiveRecord::Base
  has_many :video_categorizations
  has_many :categories, through: :video_categorizations
  attr_accessible :url, :user_id, :category_ids


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
