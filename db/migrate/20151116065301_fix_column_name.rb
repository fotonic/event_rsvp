class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :attendees, :name, :first_name
    add_column :attendees, :last_name, :string
  end
end
