class CreateRutinas < ActiveRecord::Migration
  def change
    create_table :rutinas do |t|
      t.datetime :fecha
      t.string :nombre
      t.string :desc
      t.string :rut

      t.timestamps null: false
    end
  end
end
