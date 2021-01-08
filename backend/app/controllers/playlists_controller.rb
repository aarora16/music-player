class PlaylistsController < ApplicationController
  def index
    playlists = Playlist.all
    if playlists
      render json: playlists
    else 
      render json: { message: 'No playlists found' }
    end
  end

  def new
    @playlist = Post.new
  end


  def create
    if @playlist.user != current_user
      render json: { msg: "Please login to create playlist" }
    else 
      @playlist.create(playlist_params)
    end
  end

  def destroy
     @playlist = Post.find_by(id: params[:id])
     @post.destroy
  end 

  def edit
  end

  def update
    @playlist.update(playlist_params)
  end


  def show
    playlist = Playlist.find_by(id: params[:id])
    if playlist
      render json: playlist
    else
      render json: { message: 'Playlist not found' }
    end
  end

  private
  def playlist_parms
    params.require(:playlist).permit(:user_id, :name, :description)
  end
end
