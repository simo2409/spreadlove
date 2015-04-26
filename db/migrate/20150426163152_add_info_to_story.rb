class AddInfoToStory < ActiveRecord::Migration
  def change
    add_column :stories, :date_from, :date
  end
end
