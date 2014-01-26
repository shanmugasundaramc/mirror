class Review < ActiveRecord::Base
  belongs_to :phoenix
  attr_accessible :content, :name, :rating, :title
end
