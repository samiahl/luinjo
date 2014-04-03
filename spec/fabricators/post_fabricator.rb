Fabricator(:post) do
  title { Faker::Lorem.sentence }
  description { Faker::Lorem.paragraph }
  url { Faker::Internet.url }
  user { User.first(:offset => rand(User.count)) }
  information_cone { InformationCone.first(:offset => rand(InformationCone.count)) }
end
