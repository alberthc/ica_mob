class AddEmailToCampus < ActiveRecord::Migration
  def change
    add_column :campus, :email, :string
  end
end
