class PlaylistSongsController < ApplicationController
  def index
    playlistsongs = PlaylistSongs.all
    if playlistsongs
      render json: playlistsongs
    else 
      render json: { message: 'No playlistsongs found' }
    end
  end

  def show
    playlistsong = PlaylistSongs.find_by(id: params[:id])
    if playlistsong
      render json: playlistsong
    else
      render json: { message: 'PlaylistSong not found' }
    end
  end
end
