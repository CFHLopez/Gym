class CreateAsistencias < ActiveRecord::Migration
  def change
    create_table :asistencias do |t|
      t.integer :cantidad
      t.timestamps null: false
    end
  end
end
