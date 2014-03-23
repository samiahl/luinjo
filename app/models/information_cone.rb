class InformationCone < ActiveRecord::Base
  has_many :posts, dependent: :destroy
end
