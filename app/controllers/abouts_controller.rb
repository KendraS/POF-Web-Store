class AboutsController < ApplicationController
  def index
    @page_title = 'About'
    @abouts = About.all
  end

  def create
  end

end
