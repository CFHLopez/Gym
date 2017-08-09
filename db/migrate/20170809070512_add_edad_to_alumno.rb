class AddEdadToAlumno < ActiveRecord::Migration
  def change
  	add_column :alumnos, :edad, :integer
  end
end
