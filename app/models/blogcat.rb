class Blogcat < ActiveRecord::Base
  has_many :posts, :foreign_key => :cat_id
  validates_presence_of :category
  validates_uniqueness_of :category
end
