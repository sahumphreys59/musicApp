class LikesController < ApplicationController
	before_action :find_song
  
  def create
    @song.likes.create(user_id: current_user.id)
    redirect_to song_path(@song)
  end
  
  private
  
  def find_song
    @song = Song.find(params[:song_id])
  end

end
