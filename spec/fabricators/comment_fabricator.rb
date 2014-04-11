Fabricator(:comment) do
  commentable { post }
  user
  title { Faker::Lorem.sentence }
  body { Faker::Lorem.paragraph }
end

Fabricator(:random_comment, from: :comment) do
  title { Faker::Lorem.sentence }
  body { Faker::Lorem.paragraph }
  commentable { Post.first(:offset => rand(Post.count))}
  user { User.first(:offset => rand(User.count)) }
end
