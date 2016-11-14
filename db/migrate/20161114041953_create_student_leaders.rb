class CreateStudentLeaders < ActiveRecord::Migration
  def change
    create_table :student_leaders do |t|
      t.string :name
      t.string :title
      t.string :image_path
      t.integer :position

      t.timestamps
    end
  end
end
