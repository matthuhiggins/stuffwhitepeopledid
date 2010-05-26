module PostHelper
  def link_to_post(post)
    link_to post.title, post
  end

  def url_for_original_post(post)
    "http://stuffwhitepeoplelike.com/#{post.url}"
  end

  def post_summary(post)
    pluralize(post.accomplishments.count, "white person #{post.title}", "white people #{post.third_person_plural}")
  end

  def random_post(post)
    {
      :number     => post.number,
      :question   => post.question,
      :summary    => post_summary(post)
    }
  end

  def random_posts(posts)
    posts.map { |post| random_post(post) }
  end
end