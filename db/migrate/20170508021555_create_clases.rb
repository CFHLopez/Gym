class CreateClases < ActiveRecord::Migration
  def change
    create_table :clases do |t|
      t.string :nombre
      t.string :desc

      t.timestamps null: false
    end
  end
end
