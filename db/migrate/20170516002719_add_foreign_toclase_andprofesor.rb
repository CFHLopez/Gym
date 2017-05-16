class AddForeignToclaseAndprofesor < ActiveRecord::Migration
  def change
  	add_colum :profesores, :clase_id, :integer
	add_foreign_key :profesores, :clases, colum: :clase_id, primary key: id
  end
end
