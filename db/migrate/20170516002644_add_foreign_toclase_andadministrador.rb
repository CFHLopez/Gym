class AddForeignToclaseAndadministrador < ActiveRecord::Migration
  def change
  	add_colum :administradores, :clase_id, :integer
	add_foreign_key :administradores, :clases, colum: :clase_id, primary key: id
  end
end
