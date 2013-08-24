class PicturesController < ApplicationController
  def new
  	@picture = Picture.new
  end

  def show
  	@picture = Picture.find(params[:id])
  end

  def create
  	@picture = Picture.new(params[:picture])
  	if @picture.save
  		redirect_to @picture
  	# else
  	# 	render 'new'
  	end
  end

end
