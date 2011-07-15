class Post < ActiveRecord::Base
  belongs_to :blogcat
  validates_uniqueness_of :title
  validates_presence_of :title
  validates_presence_of :content
  
  has_friendly_id :title, :use_slug => true
end
