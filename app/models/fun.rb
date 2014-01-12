class Fun < ActiveRecord::Base
  #TODO: Check to see what is ORM and put up the content here!
  #these are the fields which can allowed to be set
  attr_accessible :content, :image, :last_seen, :made_by, :title
end
