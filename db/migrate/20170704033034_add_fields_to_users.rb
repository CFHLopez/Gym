class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :rut, :integer
    add_column :users, :edad, :integer
    add_column :users, :sexo, :string
    add_column :users, :observacion, :string
  end
end
