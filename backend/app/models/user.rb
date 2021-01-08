class User < ApplicationRecord
  has_secure_password
  
  has_many :playlists

  validates :username, presence: true
  validates :password, length: { minimum: 3 }
end
