class Post < ActiveRecord::Base
  require 'url_absence_validator'
  require 'email_absence_validator'
  require 'http_url_validator'

  belongs_to :user
  belongs_to :information_cone

  validates :title, presence: true
  validates :title, length: {in: 1..32}
  validates :title, :description, {url_absence: true, email_absence: true}
  validates :description, length: {maximum: 1000}
  validates :url, {length: {maximum: 256}, http_url: true, unless: "url.blank?"}

  # The core of self-posting
  validates :description, presence: true, if: 'url.blank?'
  validates :url, presence: true, if: 'description.blank?'

end
