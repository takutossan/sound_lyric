class LyricsController < ApplicationController
  def index
  end

  def new
    @lyric = Lyric.new
  end
end
