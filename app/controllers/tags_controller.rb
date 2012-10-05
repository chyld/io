class TagsController < ApplicationController
  layout 'arc'
  def index
    @tags = Tag.find(:all, :order => :name)
  end
  
  def edit
    @tag = Tag.find(params[:id])
  end
  
  def update
    Tag.persist(params[:tag])
    redirect_to tags_path
  end
end
