class CreatePolititians < ActiveRecord::Migration
  def change
    create_table :polititians do |t|
  	  	t.string :name
    	t.string :last_name
    	t.string :political_position
    	t.date :political_position_start_at
    	t.date :political_position_end_at
    	t.boolean :higher_education
    	t.string :higher_education_center
    	t.string :higher_education_degree
    	t.date :higher_education_start_at
    	t.date :higher_education_end_at
    	t.boolean :prof_experience
    	t.string :prof_experience_employer
    	t.string :prof_experience_position
    	t.date :prof_expererience_start_at
    	t.date :prof_experience_end_at
    	t.boolean :public_exam
    	t.string :public_exam_title
    	t.date :public_exam_date
    	t.boolean :english
    	t.string :english_level
    	t.boolean :corruption
    	t.string :corruption_title
    	t.string :corruption_description
    	t.date :impeach_date
      	t.timestamps
    end
  end
end
