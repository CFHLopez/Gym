class AddRutToProfesor < ActiveRecord::Migration
  def change
    add_column :profesors, :rut, :string
  end
end
