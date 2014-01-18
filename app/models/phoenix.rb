class Phoenix < ActiveRecord::Base
  attr_accessible :content, :fact, :image, :last_seen, :made_by, :no_views
end
