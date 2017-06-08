class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    # render :welcome
    @header = "Routing Controller Intro - Welcome Page"
  end

  def about
    @header = "Know about us"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    # redirect_to '/welcome'
    redirect_to welcome_url
    # @header = "Routing Controller Intro - Contest Page"
  end

  def kitten
    # set_kitten_url
  end

  def kittens
    # set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == "hey"
      render :secrets
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      # redirect_to '/welcome'
      redirect_to welcome_url
    end
  end

end
