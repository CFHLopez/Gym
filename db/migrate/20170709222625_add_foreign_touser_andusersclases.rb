class AddForeignTouserAndusersclases < ActiveRecord::Migration
  def change
  	add_column :users, :usersclases_id, :integer
	add_foreign_key :users, :usersclases, column: :usersclases_id, primary_key: :id
  end
end
