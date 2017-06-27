class AddForeignToclaseAndasist < ActiveRecord::Migration
  def change
  	add_column :asists, :clase_id, :integer
	add_foreign_key :asists, :clases, column: :clase_id, primary_key: :id
  end
end
