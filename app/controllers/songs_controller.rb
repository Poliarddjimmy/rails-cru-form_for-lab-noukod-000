class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(id)
  end

  def edit
    @song = Song.find(id)
  end

  def update
    @song = Song.find(id)
  end

  def create
    @song = Song.new
  end

end
