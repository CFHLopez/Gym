class AddForeignTofichaAndalumno < ActiveRecord::Migration
  def change
  	add_column :fichas, :alumno_id, :integer
	add_foreign_key :fichas, :alumnos, column: :alumno_id, primary_key: :id
  end
end