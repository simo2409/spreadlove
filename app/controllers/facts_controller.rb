class FactsController < ApplicationController

  before_action :authenticate_user!
  before_action :get_story_from_id
  before_action :get_fact_from_id, except: :create

  def create
    @fact = @story.facts.create(params_for_item)
    redirect_to story_path(@story)
  end

  def update
  end

  def destroy
  end

  private

  def params_for_item
    params.require(:fact).permit(:story_id, :date_from, :date_to, :kind, :description, :actor_id)
  end

  def get_story_from_id
    @story = current_user.stories.where(id: params[:story_id]).first
    page_404 unless @story
  end

  def get_fact_from_id
    @fact = @story.facts.where(id: params[:id]).first
    page_404 unless @fact
  end
end
