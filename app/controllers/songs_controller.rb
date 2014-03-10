class SongsController < ApplicationController
  
  def create
    key=get_id
    @album_tracks= Album.find(key).songs.new(song_details)
    if @album_tracks.save
      redirect_to track_path(key)
    else
      render :text => error
    end
  end

  def destroy
    key = get_id
    if Song.find(params[:id]).destroy
      redirect_to track_path(key)
    else
      render :text => "error occured while deleting"
    end
  end

end

private 
def song_details
  params.require(:song).permit(:name, :audio_file)
end