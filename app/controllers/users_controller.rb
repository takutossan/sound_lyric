class UsersController < ApplicationController
  def show
    @name = current_user.name
    @lyrics = current_user.lyrics
  end
end
