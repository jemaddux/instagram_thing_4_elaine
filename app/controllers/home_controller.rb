class HomesController < ApplicationController

  def index
    render :index
  end

  def show
    username = params[:username]
    @photo = PhotoService.get_recent_photo(username)
    render :index
  end

end
