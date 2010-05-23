module PostHelper
  def link_to_post(post)
    link_to post.title, post
  end

  def url_for_original_post(post)
    "http://stuffwhitepeoplelike.com/#{post.url}"
  end
end