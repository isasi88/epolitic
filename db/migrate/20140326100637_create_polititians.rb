class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|

  	  t.string :first_name
    	t.string :last_name
      t.string :avatar
      t.integer :group_id
      t.timestamps
    end
  end
end
