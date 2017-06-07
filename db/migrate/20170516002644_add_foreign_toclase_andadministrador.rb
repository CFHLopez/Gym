class AddForeignToclaseAndadministrador < ActiveRecord::Migration
  def change
     add_column :administradors, :clase_id, :integer
	   add_foreign_key :administradors, :clases, column: :clase_id, primary_key: :id
  end
end
