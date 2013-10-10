class PageController < ApplicationController
  def home
	  @time=Time.now
	  @deepak="Hello Rohan"
	  @cal_day=Date.today.at_beginning_of_month
	  @url1=params[:name]
	  	#params are used to fetch the strings passed in the url...
	  	#In the above case I am passing the name in URL e.g. #?name=rohan
	  	#Page has to display Rohan when @url is called
	  	#http://localhost:3000/page/home?name=rohan&year=2013
	  @url2=params[:year]
	  @users=["Rohan", "Deepak", "Shiva", "G", "john"]
  end

  def tech
  end

  def news
    @times=Time.now
    @name="Sai"
  end

  def facts
  end

  def fun
  end

  def aboutme
  end

  def login
  end
end
