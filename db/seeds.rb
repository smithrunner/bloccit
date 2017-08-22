require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

# Create Unique Post
Post.find_or_create_by(title: "Unique Post Title", body: "Unique Post Body")

posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create Unique Comment on Unique Post
uniqueP = Post.find_or_create_by(title: "Unique Post Title", body: "Unique Post Body")
Comment.find_or_create_by(post: uniqueP, body: "Unique Comment")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"