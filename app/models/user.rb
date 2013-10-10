class User < ActiveRecord::Base
  has_many :boards
  has_many :darts

  has_secure_password

  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive:false }, format: { with: valid_email_regex }
end
