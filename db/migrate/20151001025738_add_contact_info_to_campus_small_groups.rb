class AddContactInfoToCampusSmallGroups < ActiveRecord::Migration
  def change
    add_column :campus_small_groups, :contact_info, :string
  end
end
