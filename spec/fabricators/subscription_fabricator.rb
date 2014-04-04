Fabricator(:subscription) do
  user
  information_cone
end

Fabricator(:random_subscription, from: :subscription) do
  user { User.first(:offset => rand(User.count)) }
  information_cone { InformationCone.first(:offset => rand(InformationCone.count)) }
end
