class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  validates_presence_of :name, :email, :password, :on => :create
  validates_uniqueness_of :name, :email
end
