class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
    	t.string :name
    	t.date :start_at
    	t.date :end_at
        t.integer :salary
      	t.string :avatar
    	t.text :description
	    t.timestamps
    end
  end
end
