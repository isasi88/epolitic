class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|
    	t.string :name
    	t.string :last_name
    	t.text :position
    	t.date :position_start_at
    	t.date :position_end_at
    	t.boolean :university_education
    	t.boolean :prev_prof_experience
    	t.boolean :public_exam
    	t.boolean :knows_english
    	t.boolean :corruption_impeach    	
      	t.timestamps
    end
  end
end
