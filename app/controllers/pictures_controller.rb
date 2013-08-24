class PicturesController < ApplicationController
  def new
  	@picture = Picture.new
  end

  def show
  	@picture = Picture.find(params[:id])
  end

  def create
  	@picture = Picture.new(params[:pictures])
  end

end
