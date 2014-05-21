class AddFacebookAndTwitterToPolititians < ActiveRecord::Migration
  def change
    add_column :polititians, :facebook, :string
    add_column :polititians, :twitter, :string
  end
end
