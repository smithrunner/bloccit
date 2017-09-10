module UsersHelper
  def any_posts_yet?
    @user.posts.count > 0
  end
  
  def any_comments_yet?
    @user.comments.count > 0
  end
end
