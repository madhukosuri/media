class TracksController < ApplicationController
  def index
    @albums=Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_details)
    if @album.save
      redirect_to track_path(@album.id), :notice => "Album has been created"
    else
      render :text => "error occured"
    end
  end

  def show
    @album = Album.includes(:songs).find(params[:id])
    set_id(params[:id])
  end

  def destroy
    Album.destroy(params[:id])
    redirect_to tracks_path
  end

  def update
  end

  def add_songs
    @s=Song.new
    puts get_id
  end
end

private
  def album_details
    params.require(:album).permit(:singer_name)
  end