module PostHelper
  def link_to_post(post)
    link_to post.title, "http://stuffwhitepeoplelike.com/#{post.url}"
  end
end