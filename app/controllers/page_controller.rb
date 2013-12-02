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
	  @year=params[:year]#changing this to year fixed my issue of month addtion and subtraction WTF...? 
	  @month=params[:month]
	  @users=["Rohan", "Deepak", "Shiva", "G", "john"]
  end

  def tech
  end

  def news
    @times=Time.now
    @name=params[:Name]
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
