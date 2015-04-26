class StoriesController < ApplicationController

  before_action :authenticate_user!

  def create
    story = current_user.create_new_story!
    redirect_to story_path(story)
  end

  def show
  end
end
