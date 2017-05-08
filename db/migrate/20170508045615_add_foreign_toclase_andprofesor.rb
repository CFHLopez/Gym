class AddForeignToclaseAndprofesor < ActiveRecord::Migration
  def change
	add_colum :profesors, :clase_id, :integer
	add_foreign_key :profesors, :clases, colum: :clase_id, primary key: id
  end
end
