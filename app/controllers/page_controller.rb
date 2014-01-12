class PageController < ApplicationController
  #TODO: Need to check how many filters are there and how they work!
  before_filter :setup
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
    @name=params[:name]
    @email=params[:email]

    if params[:commit]
      flash.now[:error]=""
      if @name.nil? || @name.empty?
        flash.now[:error] << "Name can't be Empty <br/>"
      end
      if @email.nil? || @email.empty?
        flash.now[:error] << "Email cant be Empty"
      end
    end
    @age=params[:age]
    @food=params[:food]
  end

  def facts
  end

  def fun
  end

  def aboutme
  end

  def login
  end

  def setup
    @products=%w[ski jets shoes ice]
  end
end
