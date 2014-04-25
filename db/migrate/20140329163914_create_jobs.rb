class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|

    	t.integer :polititian_id
    	t.string :position
        t.boolean  :political_position, :default => false, :null => false
    	t.string :employer
    	t.date :start_at
    	t.date :end_at
        t.boolean  :currently_work_here, :default => false, :null => false
    	t.text :description
    	t.timestamps

    end
  end
end
