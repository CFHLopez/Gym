class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
      t.string :nombre
      t.integer :edad
      t.string :desc

      t.timestamps null: false
    end
  end
end
