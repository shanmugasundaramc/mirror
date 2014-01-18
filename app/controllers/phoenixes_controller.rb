class PhoenixesController < ApplicationController
  # GET /phoenixes
  # GET /phoenixes.json
  def index
    @phoenixes = Phoenix.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @phoenixes }
    end
  end

  # GET /phoenixes/1
  # GET /phoenixes/1.json
  def show
    @phoenix = Phoenix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phoenix }
    end
  end

  # GET /phoenixes/new
  # GET /phoenixes/new.json
  def new
    @phoenix = Phoenix.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @phoenix }
    end
  end

  # GET /phoenixes/1/edit
  def edit
    @phoenix = Phoenix.find(params[:id])
  end

  # POST /phoenixes
  # POST /phoenixes.json
  def create
    @phoenix = Phoenix.new(params[:phoenix])

    respond_to do |format|
      if @phoenix.save
        format.html { redirect_to @phoenix, notice: 'Phoenix was successfully created.' }
        format.json { render json: @phoenix, status: :created, location: @phoenix }
      else
        format.html { render action: "new" }
        format.json { render json: @phoenix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /phoenixes/1
  # PUT /phoenixes/1.json
  def update
    @phoenix = Phoenix.find(params[:id])

    respond_to do |format|
      if @phoenix.update_attributes(params[:phoenix])
        format.html { redirect_to @phoenix, notice: 'Phoenix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @phoenix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phoenixes/1
  # DELETE /phoenixes/1.json
  def destroy
    @phoenix = Phoenix.find(params[:id])
    @phoenix.destroy

    respond_to do |format|
      format.html { redirect_to phoenixes_url }
      format.json { head :no_content }
    end
  end
end
