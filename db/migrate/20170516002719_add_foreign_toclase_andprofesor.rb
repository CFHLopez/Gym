class AddForeignToclaseAndprofesor < ActiveRecord::Migration
  def change
  	add_column :profesors, :clase_id, :integer
	add_foreign_key :profesors, :clases, column: :clase_id, primary_key: :id
  end
end
