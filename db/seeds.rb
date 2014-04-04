$LOAD_PATH << 'spec/fabricators'
require 'fabrication'
require 'faker'
require 'user_fabricator'
require 'information_cone_fabricator'
require 'post_fabricator'
require 'subscription_fabricator'

20.times do
  Fabricate(:user)
  Fabricate(:information_cone)
end

100.times { Fabricate(:random_post) }

100.times { Fabricate(:random_subscription) }
