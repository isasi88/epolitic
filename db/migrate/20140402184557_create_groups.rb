class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
		t.string :name
		t.string :description
		t.string :avatar
		t.timestamps
		t.index :name
    end
  end
end
