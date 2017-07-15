class AddDescToAlumno < ActiveRecord::Migration
  def change
    add_column :alumnos, :desc, :string
  end
end
