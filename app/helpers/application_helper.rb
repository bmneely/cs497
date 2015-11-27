module ApplicationHelper
  def avatar_for_user(user, width = "100%")
    image_tag(user.gravatar_url, width: width, class: "img-circle")
  end

  def markdown_to_html(markdown)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render markdown).html_safe
  end
end
