class LinksController < ApplicationController
  layout 'links'

  def index
    @tags = Tag.find(:all, :order => :name)
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def edit
    @link = Link.find(params[:id])
  end

  def create
    Link.persist(params[:link])
    redirect_to links_path
  end

  def update
    Link.persist(params[:link])
    redirect_to links_path
  end

  def destroy
  end
end
