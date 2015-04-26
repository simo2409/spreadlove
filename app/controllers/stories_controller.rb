class StoriesController < ApplicationController

  before_action :authenticate_user!

  def create
    story = current_user.create_new_story!
    redirect_to story_path(story)
  end

  def show
    @story = current_user.stories.where(:id => params[:id]).first
    @facts = @story.facts.includes(:actor).order(:date_from => :desc)
  end
end
