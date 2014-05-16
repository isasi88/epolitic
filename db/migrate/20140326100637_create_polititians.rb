class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|

  	  t.string :first_name
    	t.string :last_name
      t.string :avatar
      t.integer :group_id
      t.timestamps
      t.string :slug
      t.index :slug
      t.index :first_name
      t.index :last_name
    end
  end
end
