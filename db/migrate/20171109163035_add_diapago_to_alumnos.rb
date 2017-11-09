class AddDiapagoToAlumnos < ActiveRecord::Migration
  def change
    add_column :alumnos, :diapago, :integer
  end
end
