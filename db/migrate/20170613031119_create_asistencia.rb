class CreateAsistencia < ActiveRecord::Migration
  def change
    create_table :asistencia do |t|
      t.datetime :fecha
      t.integer :cant_alumnos

      t.timestamps null: false
    end
  end
end
