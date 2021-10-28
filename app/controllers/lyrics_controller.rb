class LyricsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  def index
    @lyric = Lyric.includes(:user)
  end

  def new
    @lyric = Lyric.new
  end

  def create
    @lyric = Lyric.new(lyric_params)
    if @lyric.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def lyric_params
    params.require(:lyric).permit(:title, :lyric).merge(user_id: current_user.id)
  end
end
