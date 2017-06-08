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
end
