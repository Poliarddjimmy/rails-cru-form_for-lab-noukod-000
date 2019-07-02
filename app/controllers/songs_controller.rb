class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new
  end

  private
	def artist_params(*args)
	  params.require(:artist).permit(*args)
	end

end
