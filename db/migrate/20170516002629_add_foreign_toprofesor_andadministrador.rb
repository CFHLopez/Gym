class AddForeignToprofesorAndadministrador < ActiveRecord::Migration
  def change
  	 add_column :administradors, :profesor_id, :integer
	   add_foreign_key :administradors, :profesors, column: :profesor_id, primary_key: :id
  end
end
