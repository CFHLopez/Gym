class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.int :edad
      t.string :sexo

      t.timestamps null: false
    end
  end
end
