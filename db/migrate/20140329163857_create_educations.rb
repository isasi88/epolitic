class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|

    	t.integer :polititian_id
    	t.string :degree
    	t.string :center
    	t.date :start_at
    	t.date :end_at
        t.boolean :not_finished
    	t.text :description	    

	    t.timestamps
    end
  end
end
