class AddHeaderToStory < ActiveRecord::Migration
  def change
    add_column :stories, :header, :string, default: nil
  end
end
