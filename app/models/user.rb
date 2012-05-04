class User < ActiveRecord::Base
  has_secure_password
  has_many :videos
  has_one :playlist
  attr_accessible :email, :password_digest
end
