Fabricator(:post) do
  title { Faker::Lorem.sentence.truncate(31) }
  description { Faker::Lorem.paragraph.truncate(999) }
  url { Faker::Internet.url.slice(0..255) }
  user
  information_cone
end

Fabricator(:random_post, from: :post) do
  title { Faker::Lorem.sentence.truncate(31) }
  description { Faker::Lorem.paragraph.truncate(999) }
  url { Faker::Internet.url.slice(0..255) }
  user { User.first(:offset => rand(User.count)) }
  information_cone { InformationCone.first(:offset => rand(InformationCone.count)) }
end

Fabricator(:random_post_without_url, from: :post) do
  title { Faker::Lorem.sentence.truncate(31) }
  description { Faker::Lorem.paragraph.truncate(999) }
  url ""
  user { User.first(:offset => rand(User.count)) }
  information_cone { InformationCone.first(:offset => rand(InformationCone.count)) }
end
