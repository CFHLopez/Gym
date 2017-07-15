class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.float :estatura
      t.float :peso
      t.integer :biceps
      t.integer :triceps
      t.integer :subescapular
      t.integer :suprailiaco
      t.float :IMC
      t.float :grasa
      t.integer :torax
      t.integer :cintura
      t.integer :caderas
      t.integer :brazo
      t.integer :muslo

      t.timestamps null: false
    end
  end
end
