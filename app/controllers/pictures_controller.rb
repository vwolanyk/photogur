class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

# ADDING A NEW PIC
  def new

    @picture = Picture.new

  end

  def create

    @picture = Picture.new(picture_params)

    if @picture.save

      redirect_to '/pictures'

    else

      render :new

    end

  end

  # EDITING/UPDATING PIC

  def edit
    @picture = Picture.find(params[:id])
  end

  def update

    @picture = Picture.find(params[:id])

    if @picture.update_attributes(picture_params)
      redirect_to "/pictures/#{@picture.id}"

    else
      render :edit
    end
end
  def picture_params
    {title: params[:picture][:title], artist: params[:picture][:artist], url: params[:picture][:url]}
  end
end
