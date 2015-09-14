class RemoveCampusNameFromCampusLeaders < ActiveRecord::Migration
  def change
    remove_column :campus_leaders, :campus_name, :string
  end
end
