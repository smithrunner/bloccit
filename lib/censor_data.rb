module CensorData
  def self.censor(posts)
    posts.each_with_index do |post, index|
      self.if_first_or_increment_of_5_post(index) ? post.title = "SPAM" : next
    end
    
    return posts
  end
  
  def self.if_first_or_increment_of_5_post(index)
    first_or_fith_boolean = false
    
    if index == 0
      return first_or_fith_boolean = true
    elsif (index+1) % 5 == 0
      return first_or_fith_boolean = true
    end
  
    return first_or_fith_boolean
  end
  
end
