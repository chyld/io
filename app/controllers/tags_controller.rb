class TagsController < ApplicationController
  layout 'links'

  def edit
    @tag = Tag.find(params[:id])
  end
  
  def update
    Tag.persist(params[:tag])
    redirect_to links_path
  end
  
  def destroy
    tag = Tag.find(params[:id])
    tag.delete if tag.links.count == 0
    redirect_to links_path
  end
end
