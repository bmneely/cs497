module ApplicationHelper
  def avatar_for_user(user, width = "100%")
    image_tag(user.gravatar_url, width: width, class: "img-circle")
  end
end
