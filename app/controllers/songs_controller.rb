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

	  @song.update(song_params(:name, :description))
	  redirect_to post_path(@post)
  end

  def create
    @song = Song.new
  end

  private
	def song_params(*args)
	  params.require(:artist).permit(*args)
	end

end
