class EntriesController < ApplicationController
  before_action :set_entry, :except => [:index, :new, :create, :dev, :media]

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
    authorize @entry
  end

  def edit
    authorize @entry
  end

  def create
    @entry = Entry.new(entry_params)

    authorize @entry
    if @entry.save
      flash[:notice] = "Entry created."
      redirect_to @entry
    else
      flash[:error] = "Entry was not created, please try again."
      render :new
    end
  end

  def update
    authorize @entry
    if @entry.update_attributes(entry_params)
      flash[:notice] = "Entry updated."
      redirect_to @entry
    else
      flash[:error] = "Entry was not updated, please try again."
      render :edit
    end
  end

  def destroy
    authorize @entry
    if @entry.destroy
      flash[:notice] = "Entry was deleted."
      redirect_to entries_path
    else
      flash[:error] = "Entry was not deleted, please try again."
      redirect_to :back
    end
  end

  def media
    @entries = Entry.where(category_id: 1)
  end

  def dev
    @entries = Entry.where(category_id: 2)
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:title, :tagline, :body, :category_id, :avatar, :shoti, :shotii, :shotiii)
  end
end
