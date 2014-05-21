class AddOtherToPolititians < ActiveRecord::Migration
  def change
    add_column :polititians, :other, :text
  end
end
