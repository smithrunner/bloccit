module CensorData
  def self.censor(posts)
    posts.each_with_index do |post, index|
      (index+1) % 5 == 0 || index == 0 ? post.title = "SPAM" : index = index
    end
    
    return posts
  end
end