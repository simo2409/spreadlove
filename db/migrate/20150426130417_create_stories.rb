class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :private, default: 0

      t.timestamps null: false
    end

    create_table :stories_users do |t|
      t.integer :story_id, null: false
      t.integer :user_id, null: false
    end
  end
end
