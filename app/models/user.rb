class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_presence_of :name, :email, :password, :on => :create
  validates_uniqueness_of :name, :email
  validates :email, :format => { :with => email_regex }
end
