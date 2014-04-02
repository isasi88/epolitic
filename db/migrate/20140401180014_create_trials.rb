class CreateTrials < ActiveRecord::Migration
  def change
    create_table :trials do |t|

    	t.integer :polititian_id
    	t.string :title
    	t.date :start_at
    	t.date :end_at
    	t.text :description	 

      t.timestamps
    end
  end
end
