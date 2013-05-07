class HomeController < ApplicationController
  def index
    render :index
  end

  def show
    #take params in username
    #call Photogetter and recieve url of first photo
    #render :index and pass along the url to erb
  end
end
