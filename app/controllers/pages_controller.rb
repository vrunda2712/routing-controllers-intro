class PagesController < ApplicationController

  def welcome
    # render :welcome
    @header = "Routing Controller Intro - Welcome Page"
  end

  def about
    @header = "Routing Controller Intro - About Page"
  end

  def contest
    @header = "Routing Controller Intro - Contest Page"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
