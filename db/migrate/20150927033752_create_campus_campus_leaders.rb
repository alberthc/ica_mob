class CreateCampusCampusLeaders < ActiveRecord::Migration
  def change
    create_table :campus_campus_leaders do |t|
      t.integer :campus_id, index: true
      t.integer :campus_leader_id, index: true
      t.timestamps null: false
    end
  end
end
