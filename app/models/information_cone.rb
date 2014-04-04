class InformationCone < ActiveRecord::Base
  require 'url_absence_validator'
  require 'email_absence_validator'
  require 'no_whitespace_validator'

  has_many :posts, dependent: :destroy
  has_many :users, through: :subscriptions
  has_many :subscriptions, dependent: :destroy

  validates :title, :description, {email_absence: true, url_absence: true}
  validates :title, {presence: true, length: {in: 2..32}, no_whitespace: true}
  validates :description, length: {maximum: 1000}
end
