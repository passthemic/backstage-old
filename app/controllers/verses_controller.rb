class VersesController < ApplicationController
  protect_from_forgery :except => [:create]
  respond_to :json


  def index
    @verses = Verse.all
    respond_with({:verses => @verses}.as_json)
  end

  def show
    @verse = Verse.find(params[:id])
    respond_with(@verse)
  end

  def create
    @verse = Verse.create(params[:verse])
    respond_with(@verse)
  end

end
