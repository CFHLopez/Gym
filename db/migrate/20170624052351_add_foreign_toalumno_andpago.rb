class AddForeignToalumnoAndpago < ActiveRecord::Migration
  def change
  	add_column :pagos, :alumno_id, :integer
	add_foreign_key :pagos, :alumnos, column: :alumno_id, primary_key: :id
  end
end
