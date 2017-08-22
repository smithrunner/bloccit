module CensorData
  def self.censor(posts)
    self.spam(posts[0])
    posts.each_with_index do |post, index|
      (index+1) % 5 == 0 ? self.spam(post) : next
    end
    
    return posts
  end
  
  def self.spam(post)
    post.title = "SPAM"
  end
  
end