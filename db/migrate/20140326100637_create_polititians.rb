class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|

  	  t.string :first_name
    	t.string :last_name
    	t.string :political_position
    	t.date :political_position_start_at
    	t.date :political_position_end_at
      t.timestamps
    end
  end
end
