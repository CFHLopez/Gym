class CreateHasAsists < ActiveRecord::Migration
  def change
    create_table :has_asists do |t|
      t.references :alumno, index: true, foreign_key: true
      t.references :asist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end