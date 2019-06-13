class ArtistsController < ApplicationController
	RSpotify.authenticate("97dd28ae9a2e42d0bf093cca5d8868ca", "03db0d22204d4e0eafb7c780492c923c")
	
  def index

   if !params[:artist_name].empty?
     @artists = RSpotify::Artist.search(params[:artist_name])
   else
     redirect_to root_path
   end
  end

  def show
    @artist = RSpotify::Artist.find(params[:id])
  end


end
