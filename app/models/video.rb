class Video < ActiveRecord::Base
  attr_accessible :url, :user_id

  def embedly_response
    api = Embedly::API.new(key: EMBEDLY_KEY)
    obj = api.oembed(url: self.url)
    obj.first
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
