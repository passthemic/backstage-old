class VersesController < ApplicationController
  protect_from_forgery :except => [:create]
  # respond_to :json


  def index
    @verses = Verse.all
    # respond_with({:verses => @verses}.as_json)
    respond_to do |format|
      format.json { render :json => @verses }
    end
  end

  def show
    @verse = Verse.find(params[:id])
    respond_with(@verse)
  end

  def create
    @verse = Verse.create(params[:verse])
    # respond_with(@verse)
    respond_to do |format|
      format.html { redirect_to new_verse_url }
      format.json { render :json => @verse }
    end
  end

  def new
    @verse = Verse.new
  end

end
