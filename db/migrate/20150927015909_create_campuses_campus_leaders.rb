class CreateCampusesCampusLeaders < ActiveRecord::Migration
  def change
    create_table :campuses_campus_leaders do |t|
      t.integer :campus_id
      t.integer :campus_leader_id

      t.timestamps
    end
  end
end
