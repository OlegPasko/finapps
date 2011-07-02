class Post < ActiveRecord::Base
  belongs_to :blogcat
  validates_inclusion_of :cat_id, :in => 1..(Blogcat.count)
  validates_presence_of :title
  validates_presence_of :content  
end
