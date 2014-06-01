class Whiggers
  class << self
    def create
      PEOPLE.each do |attributes|
        create_user(attributes)
      end
    end
  
    def create_user(attributes)
      user = User.create :fb_uid => attributes['id']
      random_posts.each do |post|
        user.accomplishments.create :post => post
      end
      user
    end

    def random_posts
      except_facebook.shuffle[0, rand(Post.count)]
    end

    def except_facebook
      @except_facebook ||= (Post.all - [Post.facebook])
    end
  end
end
