class AddSourcesToPolititians < ActiveRecord::Migration
  def change
    add_column :polititians, :sources, :text
  end
end
