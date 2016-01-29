class IdeasController < ApplicationController
  before_action :set_idea, :except => [:index, :new, :create]

  def index
    @ideas = Idea.all
    authorize @ideas
  end

  def new
    @idea = Idea.new
    authorize @idea
  end

  def edit
    authorize @idea
  end

  def show
    authorize @idea
  end

  def create
    @idea = Idea.new(idea_params)

    authorize @idea
    if @idea.save
      flash[:notice] = "Idea created."
      redirect_to @idea
    else
      flash[:error] = "Idea was not created, please try again."
      render :new
    end
  end

  def update
    authorize @idea
    if @idea.update_attributes(idea_params)
      flash[:notice] = "Idea updated."
      redirect_to @idea
    else
      flash[:error] = "Idea was not updated, please try again."
      render :edit
    end
  end

  def destroy
    authorize @idea
    if @idea.destroy
      flash[:notice] = "Idea deleted."
      redirect_to ideas_path
    else
      flash[:error] = "Idea was not deleted, please try again."
      render :back
    end
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:title, :tagline, :status, :body)
  end
end
