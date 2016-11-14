class AddIsActiveToStudentLeaders < ActiveRecord::Migration
  def change
    add_column :student_leaders, :is_active, :boolean
  end
end
