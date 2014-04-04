class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
  attr_accessor :terms_of_service

  has_many :posts
  has_many :information_cones, through: :subscriptions
  has_many :subscriptions, dependent: :destroy

  validates :username, {presence: true, uniqueness: {case_sensitive: false}, length: {in: 1..16}}
  validates :terms_of_service, {acceptance: true}

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase}]).first
    else
      where(conditions).first
    end
  end
end
