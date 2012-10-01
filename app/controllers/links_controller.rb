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
    title = params[:link][:title].squish
    url = params[:link][:url].squish
    tags = params[:link][:tags].squish.split.map{|n| n.downcase}.uniq.map{|n| Tag.find_or_create_by_name(n)}
    link = Link.find_or_create_by_url(url)
    link.title = title
    link.tags = tags
    link.save
    redirect_to links_path
  end

  def update
    title = params[:link][:title].squish
    url = params[:link][:url].squish
    tags = params[:link][:tags].squish.split.map{|n| n.downcase}.uniq.map{|n| Tag.find_or_create_by_name(n)}
    link = Link.find_or_create_by_url(url)
    link.title = title
    link.tags = tags
    link.save
    redirect_to links_path
  end

  def destroy
  end
end
