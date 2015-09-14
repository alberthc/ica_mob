class AddImagePathToCampusLeaders < ActiveRecord::Migration
  def change
    add_column :campus_leaders, :image_path, :string
  end
end
