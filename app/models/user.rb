class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  def self.find_or_create_from_auth(auth)
      uid = auth[:uid]
      user_name = auth[:info][:name]
      nickname = auth[:info][:nickname]
      image_url = auth[:info][:image]

      self.find_or_create_by(uid: uid) do |user|
          user.user_name = user_name
          user.nickname = nickname
          user.image_url = image_url
      end
  end

  def feed
    Post.where("user_id = ?", id)
  end
end