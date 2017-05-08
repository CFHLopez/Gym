class CreateAsignaturas < ActiveRecord::Migration
  def change
    create_table :asignaturas do |t|
      t.int :cantidad

      t.timestamps null: false
    end
  end
end
