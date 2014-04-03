class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :name
    	t.integer :group_type
    	t.string :description
    	t.string :avatar
      t.timestamps
    end
  end
end
