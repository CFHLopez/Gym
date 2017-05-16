class AddForeignToprofesorAndadministrador < ActiveRecord::Migration
  def change
  	add_colum :administradores, :profesor_id, :integer
	add_foreign_key :administradores, :profesores, colum: :profesor_id, primary key: id
  end
end
