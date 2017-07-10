class AddForeignTousersclasesAndclase < ActiveRecord::Migration
  def change
  	add_column :usersclases, :clase_id, :integer
	add_foreign_key :usersclases, :clases, column: :clase_id, primary_key: :id
  end
end
