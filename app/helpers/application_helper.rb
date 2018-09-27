module ApplicationHelper
  def gravatar_helper user
    gravatar_id  = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"

    image_tag gravatar_url, width: "152", height: "152", class: "round-img"
  end
end
