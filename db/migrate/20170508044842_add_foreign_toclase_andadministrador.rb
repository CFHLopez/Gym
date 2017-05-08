class AddForeignToclaseAndadministrador < ActiveRecord::Migration
  def change
	add_colum :administradors, :clase_id, :integer
	add_foreign_key :administradors, :clases, colum: :clase_id, primary key: id
  end
end
