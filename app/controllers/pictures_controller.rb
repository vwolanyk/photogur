class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new

    @picture = Picture.new
    render :new
  end

  def create

    render plain: "Received POST request to '/pictures' with the data URL: #{params.inspect} "

  end

end
