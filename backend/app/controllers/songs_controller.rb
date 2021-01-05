class SongsController < ApplicationController
  def index
    songs = Song.all
    if songs
      render json: songs
    else
      render json: { message: 'No songs found' }
    end
  end

  def show
    song = Song.find_by(id: params[:id])
    if song
      render json: song
    else 
      render json: { message: 'Song not found' }
    end
  end
end
