class CreateAsistencia < ActiveRecord::Migration
  def change
    create_table :asistencia do |t|
      t.int :cantidad

      t.timestamps null: false
    end
  end
end
