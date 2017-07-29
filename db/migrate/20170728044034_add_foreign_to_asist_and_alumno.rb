class AddForeignToAsistAndAlumno < ActiveRecord::Migration
  def change
  	add_column :asists, :alumno_id, :integer
	add_foreign_key :asists, :alumnos, column: :alumno_id, primary_key: :id
  end
end
