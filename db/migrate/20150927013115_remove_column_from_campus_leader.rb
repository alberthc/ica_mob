class RemoveColumnFromCampusLeader < ActiveRecord::Migration
  def change
    remove_column :campus_leaders, :column, :integer
  end
end
