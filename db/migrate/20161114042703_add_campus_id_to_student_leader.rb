class AddCampusIdToStudentLeader < ActiveRecord::Migration
  def change
    add_reference :student_leaders, :campus, foreign_key: true
  end
end
