class AddForeignToAlumnoAndClase < ActiveRecord::Migration
  def change
  	add_column :alumnos, :clase_id, :integer
	add_foreign_key :alumnos, :clases, column: :clase_id, primary_key: :id
  end
end
