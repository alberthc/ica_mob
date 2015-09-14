class AddColumnAndPositionToCampusLeaders < ActiveRecord::Migration
  def change
    add_column :campus_leaders, :column, :integer
    add_column :campus_leaders, :position, :integer
  end
end
