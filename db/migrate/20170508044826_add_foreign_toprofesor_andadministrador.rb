class AddForeignToprofesorAndadministrador < ActiveRecord::Migration
  def change
	add_colum :administradors, :profesor_id, :integer
	add_foreign_key :administradors, :profesors, colum: :profesor_id, primary key: id
  end
end
