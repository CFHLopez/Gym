class AddForeignToclaseAndusersclases < ActiveRecord::Migration
  def change
  	add_column :clases, :usersclases_id, :integer
	add_foreign_key :clases, :usersclases, column: :usersclases_id, primary_key: :id
  end
end
