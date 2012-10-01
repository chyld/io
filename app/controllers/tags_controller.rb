class TagsController < ApplicationController
  layout 'links'

  def edit
    @tag = Tag.find(params[:id])
  end
  
  def update
    tag = Tag.find(params[:id])
    tag.name = params[:tag][:name]
    tag.save
    redirect_to links_path
  end
  
  def destroy
    tag = Tag.find(params[:id])
    tag.delete if tag.links.count == 0
    redirect_to links_path
  end
end
