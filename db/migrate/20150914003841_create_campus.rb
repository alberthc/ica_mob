class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :school_name
      t.string :org_name
      t.string :main_pic_id
      t.string :group_pic_path
      t.text :keywords
      t.text :description
      t.string :rally_name
      t.string :rally_datetime
      t.string :rally_location
      t.string :church_name
      t.string :church_datetime
      t.string :church_location
      t.string :announcements_bg_color1_class
      t.string :announcements_bg_color2_class
      t.string :fb_campus_link
      t.string :fb_link_class
      t.string :small_groups_path
      t.string :small_groups_pic_id
      t.string :leaders_path
      t.string :leaders_pic_id
      t.string :gcal_path
      t.integer :campus_small_group_id

      t.timestamps
    end
  end
end
