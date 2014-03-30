class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|

    	t.integer :polititian_id
    	t.string :employer
    	t.string :position
    	t.date :start_at
    	t.date :end_at
    	t.text :description

    	t.timestamps
    end
  end
end
