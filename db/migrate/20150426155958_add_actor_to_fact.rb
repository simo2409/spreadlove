class AddActorToFact < ActiveRecord::Migration
  def change
    add_column :facts, :actor_id, :integer, default: nil
  end
end
