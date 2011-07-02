class Post < ActiveRecord::Base
  belongs_to :blogcat

  validates_presence_of :title
  validates_presence_of :content  
end
