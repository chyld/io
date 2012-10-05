class LinksController < ApplicationController
  layout 'arc'
  def new
    @link = Link.new
  end
  
  def create
    Link.persist(params[:link])
    redirect_to tags_path
  end
  
  def edit
    @link = Link.find(params[:id])
  end
  
  def update
    Link.persist(params[:link])
    redirect_to tags_path
  end
end
