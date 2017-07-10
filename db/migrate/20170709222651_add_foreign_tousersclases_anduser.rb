class AddForeignTousersclasesAnduser < ActiveRecord::Migration
  def change
  	add_column :usersclases, :user_id, :integer
	add_foreign_key :usersclases, :users, column: :user_id, primary_key: :id
  end
end
