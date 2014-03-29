class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|
  	  	t.string :first_name
    	t.string :last_name
    	t.string :political_position
    	t.date :political_position_start_at
    	t.date :political_position_end_at
#    	t.string :public_exam_title
#    	t.date :public_exam_date
#    	t.boolean :english
#    	t.string :english_level
#    	t.boolean :corruption
#    	t.string :corruption_title
#    	t.string :corruption_description
#    	t.date :impeach_date
      	t.timestamps
    end
  end
end
