class PhotoService

  def self.get_recent_photo(username)
    user_id = Instagram.user_search(username).first["id"]
    Instagram.user_recent_media(user_id).first["images"]["standard_resolution"]["url"]
  end
end
