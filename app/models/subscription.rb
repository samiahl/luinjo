class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :information_cone

  validates :user, :information_cone, presence: true
end
