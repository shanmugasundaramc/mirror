class UserViewsController < ApplicationController
  # GET /user_views
  # GET /user_views.json
  def index
#@phoenixes = Phoenix.page (params[:page])
#@phoenixes = Phoenix.paginate(:page => params[:page], :per_page => 5)
#can even order by column by default its asc as shown below directly provide the-
#-name of the column
# @phoenixes = Phoenix.order(:fact).paginate(:page => params[:page], :per_page => 5)
#kaminari gem
    @phoenixes = Phoenix.order("fact DESC").paginate(:page => params[:page], :per_page => 5)
    #@phoenixes=Phoenix.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @phoenixes }
    end
  end

  # GET /user_views/1
  # GET /user_views/1.json
  def show
    @phoenix = Phoenix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phoenix }
    end
  end
end