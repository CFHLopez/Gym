class AddForeignToasistenciaAndclase < ActiveRecord::Migration
  def change
	add_colum :clases, :asistencia_id, :integer
	add_foreign_key :clases, :asistencia, colum: :asistencia_id, primary key: id
  end
end
