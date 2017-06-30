class AddRutToAdministrador < ActiveRecord::Migration
  def change
    add_column :administradors, :rut, :string
  end
end
