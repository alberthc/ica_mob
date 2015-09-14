class CreateCampusSmallGroups < ActiveRecord::Migration
  def change
    create_table :campus_small_groups do |t|
      t.integer :campus_id

      t.timestamps
    end
  end
end
