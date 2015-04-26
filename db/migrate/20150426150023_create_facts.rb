class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.integer :story_id, null: false
      t.datetime :date_from, null: false
      t.datetime :date_to, default: nil
      t.integer :kind, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
