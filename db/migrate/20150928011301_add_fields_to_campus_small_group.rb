class AddFieldsToCampusSmallGroup < ActiveRecord::Migration
  def change
    add_column :campus_small_groups, :name, :string
    add_column :campus_small_groups, :current_study, :string
    add_column :campus_small_groups, :location_and_time, :string
    add_column :campus_small_groups, :leaders, :string
    add_column :campus_small_groups, :position, :integer
  end
end
