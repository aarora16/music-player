class PlaylistsController < ApplicationController
  def index
    playlists = Playlist.all
    if playlists
      render json: playlists
    else 
      render json: { message: 'No playlists found' }
    end
  end

  def show
    playlist = Playlist.find_by(id: params[:id])
    if playlist
      render json: playlist
    else
      render json: { message: 'Playlist not found' }
    end
  end
end
