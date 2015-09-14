class CreateCampusesCampusLeaders < ActiveRecord::Migration
  def change
    create_table :campuses_campus_leaders do |t|
      t.integer :campus_id
      t.integer :campus_leader_id

      t.timestamps
    end
    add_index :campuses_campus_leaders, :campus_id
    add_index :campuses_campus_leaders, :campus_leader_id
  end
end
