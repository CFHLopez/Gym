class AddRutToAlumno < ActiveRecord::Migration
  def change
    add_column :alumnos, :rut, :string
  end
end
