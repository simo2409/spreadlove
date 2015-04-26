class StoriesController < ApplicationController

  before_action :authenticate_user!
  before_action :get_item_from_id, :except => :create

  def create
    story = current_user.create_new_story!
    redirect_to story_path(story)
  end

  def update
    if @story.update_attributes(params_for_story)
      flash[:success] = 'Story updated'
    else
      flash[:error] = 'Unable to update story'
    end
    redirect_to story_path(@story)
  end

  def show
    @facts = @story.facts.includes(:actor).order(:date_from => :desc)
  end

  private

  def params_for_story
    params.require(:story).permit(:date_from, :header, :remove_header)
  end

  def get_item_from_id
    @story = current_user.stories.where(:id => params[:id]).first
    page_404 unless @story
  end
end
