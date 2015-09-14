class CreateCampusLeaders < ActiveRecord::Migration
  def change
    create_table :campus_leaders do |t|
      t.string :campus_name
      t.string :name
      t.string :title
      t.text :bio
      t.boolean :is_active

      t.timestamps
    end
  end
end
