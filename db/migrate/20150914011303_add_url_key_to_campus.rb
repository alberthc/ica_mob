class AddUrlKeyToCampus < ActiveRecord::Migration
  def change
    add_column :campus, :url_key, :string
    add_index :campus, :url_key
  end
end
