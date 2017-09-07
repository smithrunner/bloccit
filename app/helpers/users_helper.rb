module UsersHelper
  def any_posts_yet?
    if @user.posts.count > 0
    end
  end
  
  def any_comments_yet?
    if @user.comments.count > 0
    end
  end
end
