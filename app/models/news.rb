class News < ActiveRecord::Base
  attr_accessible :content, :date, :headline, :image, :news_by, :tags
end
