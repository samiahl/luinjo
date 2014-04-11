$LOAD_PATH << 'spec/fabricators'
require 'fabrication'
require 'faker'
require 'user_fabricator'
require 'information_cone_fabricator'
require 'post_fabricator'
require 'subscription_fabricator'
require 'comment_fabricator'

puts "Generating..."
puts "Users and Information Cones"
20.times do
  Fabricate(:user)
  Fabricate(:information_cone)
end

puts "Random posts"
50.times { Fabricate(:random_post) }
50.times { Fabricate(:random_post_without_url)}

puts "Random comments"
100.times { Fabricate(:random_comment) }
100.times do
  parent = Comment.first(offset: rand(Comment.count))
  child = Comment.build_from( parent.commentable, User.first(offset: rand(User.count)).id, Faker::Lorem.paragraph)
  child.save
  child.move_to_child_of(parent)
end

puts "Random subscriptions"
100.times { Fabricate(:random_subscription) }
