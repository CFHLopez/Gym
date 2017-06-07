class AddForeignToasistenciaAndclase < ActiveRecord::Migration
  def change
  	 add_column :clases, :asistencia_id, :integer
	   add_foreign_key :clases, :asistencias, column: :asistencia_id, primary_key: :id
  end
end
