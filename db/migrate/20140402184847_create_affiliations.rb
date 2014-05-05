class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
    	t.integer :polititian_id
    	t.integer :institution_id
    	t.date :start_at
    	t.date :end_at
      t.timestamps
    end
  end
end
