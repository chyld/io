class NotesController < ApplicationController
  layout 'arc'
  def new
    @note = Note.new
  end
  
  def create
    Note.persist(params[:note])
    redirect_to tags_path
  end
  
  def edit
    @note = Note.find(params[:id])
  end
  
  def update
    Note.persist(params[:note])
    redirect_to tags_path
  end
  
  def show
    @note = Note.find(params[:id])
  end
end
